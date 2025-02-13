#include <iostream>
#include <fstream>
#include <filesystem>
#include <set>
#include <map>
#include <stack>
#include "langGenerator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Value.h"
#include "llvm/Transforms/Utils/Cloning.h"
// #include "llvm/IR/SymbolTableListTraits.h"

#include "l-star/LStar.h"
#include "l-star/FSA_FSAtoREConverter.h"
#include "DopplerQuery.h"

void langGenerator::readFile(const string& filename) {
    if (srcLines.find(filename) != srcLines.end()) {
        return;
    }

    ifstream srcFile(filename);
    if (srcFile.is_open()) {
        string line;
        srcLines[filename] = vector<string>();
        while (getline(srcFile, line)) {
            srcLines[filename].push_back(line);
        }
        srcFile.close();
    }
}

langGenerator::langGenerator(string filePath, string entryFunction, string varsJsonFile, string gadgetLinesFile,
                             string srcPath, vector<PathConstraint> paths, bool use_src, bool use_lstar, string dfaPath, bool skip_reg)
{
    this->filePath = filePath;
    this->paths = paths;
    this->use_src = use_src;
    this->use_lstar = use_lstar;
    this->dfa_path = dfaPath;
    this->skip_reg = skip_reg;

    if (entryFunction != "")
        this->entryFunction = entryFunction;
    // update godValidVars
    if (gadgetLinesFile.empty())
        gadgetLines = {};
    else
        gadgetLines = readGadgetLinesFromJson(gadgetLinesFile);
    godValidVars = readVarsFromJson(varsJsonFile);
    // entryValidVars = readVarsFromJson(entryvarsJsonFile);
    cout << "[+] Finish the initialization..." << endl;
    // this.PB = new PassBuilder();
    PB.registerFunctionAnalyses(FAM);
    // to use analysis pass
    // auto &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);
    // auto &LI = FAM.getResult<LoopAnalysis>(F);
    // auto &DA = FAM.getResult<DependenceAnalysis>(F);

};

string trim(const std::string &str,
            const std::string &whitespace = " \t")
{
    const auto strBegin = str.find_first_not_of(whitespace);
    if (strBegin == std::string::npos)
        return "Trim: empty stmt"; // no content

    const auto strEnd = str.find_last_not_of(whitespace);
    const auto strRange = strEnd - strBegin + 1;

    return str.substr(strBegin, strRange);
}

string llvmToSourceString(const Instruction *I, const vector<string> &srcLines)
{
    if (auto DL = I->getDebugLoc())
    {
        unsigned Line = DL.getLine();
        unsigned Col = DL.getCol();
        if (Line - 1 >= srcLines.size())
        {
            cout << "out of the range at line " << Line - 1 << endl;
            return "";
        }
        auto cLine = srcLines[Line - 1];
        cout << "at line" << Line;
        return trim(cLine);
        // return cLine.substr(Col-1); // sometimes out of range
    }
    else
    {
        return "cannot find in the source code";
    }
}

llvm::Type *getValueType(Value *val)
{
    std::string type_str;
    llvm::raw_string_ostream rso(type_str);
    val->getType()->print(rso);
    // the type is i32/i32*/i32**/i64/i1
    std::cout << "[+] ********* getValueType *********" << rso.str() << endl;

    return val->getType();
}

llvm::Type *getLoadInstType(LoadInst *inst)
{
    std::string type_str;
    llvm::raw_string_ostream rso(type_str);
    inst->getPointerOperandType()->print(rso);
    // the type is i32/i32*/i32**/i64/i1
    std::cout << "[+] ******** getLoadInstType ********" << rso.str() << endl;

    return inst->getPointerOperandType();
}

tuple<unsigned, unsigned, string> getLineByInst(const Instruction *I)
{
    if (auto DL = I->getDebugLoc())
    {
        return make_tuple(DL.getLine(),
                          DL.getCol(),
                          DL->getDirectory().str() + "/" + DL->getFilename().str());
    }
    else
    {
        return make_tuple(-1, -1, "");
    }
}

string langGenerator::getSourceByLine(unsigned Line, unsigned Col, const string& fileName)
{
//    if (srcLines.find(fileName) == srcLines.end()) {
//        cout << "File has not been read yet. Run readFile first." << endl;
//        return "";
//    }
    readFile(fileName);
    if (Line - 1 >= srcLines[fileName].size())
    {
        cout << "out of the range at line " << Line - 1 << " out of  " << srcLines[fileName].size() << endl;
        return "";
    }
    auto cLine = srcLines[fileName][Line - 1];
    if (Col - 1 >= cLine.size())
    {
        return trim(cLine);
    }
    // return cLine.substr(Col-1);
    return trim(cLine); // for debug
}

vector<string> llvmToSource(vector<Instruction *> llvmLines,
                            vector<string> &srcLines)
{
    vector<string> cLines;
    for (Instruction *I : llvmLines)
    {
        cLines.push_back(llvmToSourceString(I, srcLines));
    }
    return cLines;
}

void printWholeFunction(Function *F)
{
    cout << "==== PRINT INLINED IR ====" << endl;
    for (auto &BB : *F)
    {
        cout << getSimpleNodeLabel(&BB) << endl;
        for (auto &I : BB)
        {
            errs() << I << "\n";
        }
    }
}

bool langGenerator::isSrcDepend(Instruction *inst, DependenceInfo DA){
    // iterate all src variable instructions
    for(auto src_it : srcValidVars){
        Instruction *S = const_cast<Instruction*>(src_it);
        if(S!=inst){
            if(DA.depends(S,inst, true)!=NULL){
                return true;
            }

        }
    // errs() << "checking dependency" << "\n";
    // errs() << *inst << "\n";
    // errs() << *S << "\n";
    }
    return false;
}

bool langGenerator::isSrcInst(Instruction *inst){
    // iterate all src variable instructions
    for(auto src_it : srcValidVars){
        Instruction *S = const_cast<Instruction*>(src_it);
        if(S==inst){
            return true;
        }
    }
    return false;
}

void myInlineFunctions(Function *F, set<string> inlineTrace = set<string>())
{
    inlineTrace.insert(F->getName().str());
    set<Function *> callInsts;
    bool hasInline = true;
    while (hasInline)
    {
        bool hasInF = false;
        for (auto &BB : *F)
        {
            bool hasInBB = false;
            for (auto &I : BB)
            {
                if (isa<CallBase>(I))
                {
                    CallBase *call_inst = dyn_cast<CallBase>(&I);
                    Function *callee = call_inst->getCalledFunction();
                    if (callee && !callee->isDeclaration()
                        // don't infinite recurse
                        && inlineTrace.find(callee->getName().str()) == inlineTrace.end()
                        // don't inline a function twice
                        && callInsts.find(callee) == callInsts.end())
                    {

                        // calling internal function
                        cout << "Inline a function " << callee->getName().str() << endl;
                        callInsts.insert(callee);
                        myInlineFunctions(callee, inlineTrace);
                        InlineFunctionInfo IFI;
                        bool res = InlineFunction(*call_inst, IFI).isSuccess();
                        cout << "Complete inlining a function " << callee->getName().str() << " RES: " << res << endl;
                        hasInBB = true;
                        break;
                    }
                }
            }
            if (hasInBB)
            {
                hasInF = true;
                break;
            }
        }
        if (!hasInF)
        {
            hasInline = false;
        }
    }

    cout << "Complete inlining at Function: " << F->getName().str() << endl;
}

void langGenerator::updateVariableTypes(BasicBlock *BB, aaInfo *currentInfo, aaInfo *entryInfo)
{

    // get the union set of entryInfo and currentInfo
    // update block vars in aaInfo*
    currentInfo->unionVariableSet(entryInfo->block_vars, aaMode);

    for (auto &I : *BB)
    {
        // errs() << "Analysis a Inst\n";
        // errs() << "Analyze Inst with " << I << "\n";
        if (isa<StoreInst>(I))
        {
            // store operand 0 to operand 1
            // cout << "Store Inst " << endl;
            Value *v1 = I.getOperand(1);
            Value *v0 = I.getOperand(0);
            string v0_name = v0->getName().str();
            string v1_name = v1->getName().str();
            // cerr << "elements in name " << v0_name << " to " << v1_name << "\n";
            string Str;
            raw_string_ostream OS(Str);
            v0->getType()->print(OS, false);
            // cout << "type "<< OS.str() << endl;
            string v0_val = "unknown";
            if (dyn_cast<ConstantInt>(v0) != nullptr)
            {
                // if v0 is a constant
                ConstantInt *val0 = dyn_cast<ConstantInt>(v0);
                v0_val = to_string(val0->getSExtValue());
                // cout << "Store: v0 is a constant " << v0_val << endl;
                Instruction *v1_inst = dyn_cast<Instruction>(v1);
                if (v1_inst != nullptr)
                {
                    // remove v1 from block_vars in aaInfo*, no matter its type

                    string v1_name = getVarName(v1_inst);
                    // cout << "Store: remove a variable " << v1_name << endl;
                    if (currentInfo->isValidVar(v1_name))
                    {
                        currentInfo->removeVariable(v1_name);
                    }
                }
            }
            else if (dyn_cast<Instruction>(v0) != nullptr || dyn_cast<GlobalVariable>(v0) != nullptr)
            {
                // if v0 is a variable
                // store operand 0 to operand 1
                // Instruction *val0 = dyn_cast<Instruction>(v0);
                // string v0_name = getVarName(val0);
                // string v0_name = getValueName(v0);
                VariableType v0_type = currentInfo->getVarType(v0_name);
                Instruction *v1_inst = dyn_cast<Instruction>(v1);
                // cout << "Store: v0 is a variable: " << v0_name << endl;
                if (dyn_cast<Instruction>(v1) != nullptr || dyn_cast<GlobalVariable>(v1) != nullptr)
                {
                    // string v1_name = getVarName(v1_inst);
                    // string v1_name = getValueName(v1);
                    // cout << "Store: should add new variable " << v1_name << endl;
                    if (currentInfo->isValidVar(v0_name))
                    {
                        // if v0 is a valid variable
                        // add v1 to block variables with the same type as v0
                        if (currentInfo->isValidVar(v1_name))
                        {
                            currentInfo->setVariableType(v1_name, v0_type);
                        }
                        else
                        {
                            ValidVariable *tmp = new ValidVariable(v1_name, v1_name,
                                                                   v1_inst->getFunction()->getName().str(), 0); // todo: add line number
                            tmp->setType(v0_type);
                            Type *v1_ptr_type = getValueType(v1);
                            tmp->setPtrOrVarType(v1_ptr_type);
                            currentInfo->addVariable(tmp);
                            // cout << "Store: add new variable " << v1_name << endl;
                        }
                    }
                    else if (currentInfo->isValidVar(v1_name))
                    {
                        // if v0 is not a valid variable, but v1 is valid
                        // remove v1
                        currentInfo->removeVariable(v1_name);
                    }
                }
                // }
                // else if(dyn_cast<DerivedUser>(v0)!=nullptr){
                //     cout << "Derived User" << endl;
                // }
                // else if(dyn_cast<Operator>(v0)!=nullptr){
                //     cout << "Operator" << endl;
            }
            else if (dyn_cast<Argument>(v0) != nullptr)
            {
                // v0 is the argument of this function
                // store operand 0 to operand 1
                // string v0_name = v0->getName().str();
                VariableType v0_type = currentInfo->getVarType(v0_name);
                Instruction *v1_inst = dyn_cast<Instruction>(v1);
                // cout << "Store: v0 is a argument: " << v0_name << endl;
                if (dyn_cast<Instruction>(v1) != nullptr || dyn_cast<GlobalVariable>(v1) != nullptr)
                {
                    // string v1_name = getVarName(v1_inst);
                    // string v1_name = getValueName(v1);
                    // cout << "Store an Argument: should add new variable " << v1->getName().str() << endl;
                    if (currentInfo->isValidVar(v0_name))
                    {
                        // if v0 is a valid variable
                        // add v1 to block variables with the same type as v0
                        if (currentInfo->isValidVar(v1_name))
                        {
                            currentInfo->setVariableType(v1_name, v0_type);
                        }
                        else
                        {
                            ValidVariable *tmp = new ValidVariable(v1_name, v1_name,
                                                                   v1_inst->getFunction()->getName().str(), 0); // todo: add line number
                            tmp->setType(v0_type);
                            Type *v1_ptr_type = getValueType(v1);
                            tmp->setPtrOrVarType(v1_ptr_type);
                            currentInfo->addVariable(tmp);
                            // cout << "Store: add new variable " << v1_name << endl;
                        }
                    }
                    else if (currentInfo->isValidVar(v1_name))
                    {
                        // if v0 is not a valid variable, but v1 is valid
                        // remove v1
                        currentInfo->removeVariable(v1_name);
                    }
                }
            }else if(dyn_cast<BitCastInst>(v0) != nullptr){
                // v0 is bitcase
                BitCastInst *v0_inst = dyn_cast<BitCastInst>(v0);
                Value *v0_cast_val = v0_inst->getOperand(0);
                // cout << "store bitcase value type" << endl;
                v0_cast_val->getType()->print(llvm::outs());
                string v0_cast_name = getValueName(v0_cast_val);
                // cout << " and name "<< v0_cast_name << endl;
            }else if(dyn_cast<Operator>(v0) != nullptr){
                // cout << "v0 is an operator" << endl;
                if(dyn_cast<BitCastOperator>(v0) != nullptr){
                    BitCastOperator *v0_op = dyn_cast<BitCastOperator>(v0);
                    // cout << "bitcast operator" << endl;
                    Value *v0_op_val = v0_op->getOperand(0);
                    string v0_name = getValueName(v0_op_val);
                    VariableType v0_type = currentInfo->getVarType(v0_name);
                    // cout << "Store: v0 is a argument: " << v0_name << endl;
                    if (dyn_cast<Instruction>(v1) != nullptr || dyn_cast<GlobalVariable>(v1) != nullptr)
                    {
                        if (currentInfo->isValidVar(v0_name))
                        {
                            // if v0 is a valid variable
                            // add v1 to block variables with the same type as v0
                            if (currentInfo->isValidVar(v1_name))
                            {
                                currentInfo->setVariableType(v1_name, v0_type);
                            }
                            else
                            {
                                ValidVariable *tmp = new ValidVariable(v1_name, v1_name, I.getFunction()->getName().str(),0); // todo: add line number
                                tmp->setType(v0_type);
                                Type *v1_ptr_type = getValueType(v1);
                                tmp->setPtrOrVarType(v1_ptr_type);
                                currentInfo->addVariable(tmp);
                                // cout << "Store: add new variable " << v1_name << endl;
                            }
                        }
                        else if (currentInfo->isValidVar(v1_name))
                        {
                            // if v0 is not a valid variable, but v1 is valid
                            // remove v1
                            currentInfo->removeVariable(v1_name);
                        }
                    }
                }else if(dyn_cast<GEPOperator>(v0) != nullptr){
                    GEPOperator *v0_op = dyn_cast<GEPOperator>(v0);
                    // cout << "getelementptr" << endl;
                    // TODO
                }else {
                    // cout << "None of above operators" << endl;
                    // TODO
                }
            }else if(dyn_cast<DerivedUser>(v0) != nullptr){
                // cout << "v0 is an derived user" << endl;
                // TODO
            }
            else {
                // cout << "None of above types" << endl;
                // TODO
            }
        }
        else if (isa<LoadInst>(I))
        {
            // load v0 to load_dst
            string load_dst = getVarName(&I);
            Value *v0 = I.getOperand(0);
            Type *v0_ty = v0->getType();
            // cout << "LoadInst has operands: " << I.getNumOperands() << endl;
            // cout << "Operand type: " << v0->getType()->isPointerTy() << endl;
            if (dyn_cast<ConstantInt>(v0) != nullptr)
            {
                // v0 is a constant
                // remove load_dst if it exists
                // ConstantInt *v0_inst = dyn_cast<ConstantInt>(v0);
                if (currentInfo->isValidVar(load_dst))
                {
                    currentInfo->removeVariable(load_dst);
                }
            }
            else if (dyn_cast<Instruction>(v0) != nullptr || dyn_cast<GlobalVariable>(v0) != nullptr)
            {
                // v0 is a local variable or global variable
                // Instruction *v0_inst = dyn_cast<Instruction>(v0);
                // string v0_name = getVarName(v0_inst);
                // cout << "Load Inst: v0 is a local/global variable" << endl;
                string v0_name = getValueName(v0);
                if (v0_name!="" && currentInfo->isValidVar(v0_name))
                {
                    // add load_dst with same type as v0
                    VariableType v0_type = currentInfo->getVarType(v0_name);
                    if (currentInfo->isValidVar(load_dst))
                    {
                        currentInfo->setVariableType(load_dst, v0_type);
                    }
                    else
                    {
                        // cout << "Add var "<< load_dst << " to annotation map" << endl;
                        ValidVariable *tmp = new ValidVariable(load_dst, load_dst,I.getFunction()->getName().str(), 0); // todo: add line number
                        LoadInst *load_dst_inst = dyn_cast<LoadInst>(&I);
                        Type *load_ptr_type = getLoadInstType(load_dst_inst);
                        tmp->setType(v0_type);
                        tmp->setPtrOrVarType(load_ptr_type);
                        currentInfo->addVariable(tmp);
                    }
                }
            }
            // else if (dyn_cast<GlobalVariable>(v0) != nullptr){
            //     GlobalVariable *gv = dyn_cast<GlobalVariable>(v0);
            //     string v0_name = getGVName(gv);

            // }
        }
        else if (isa<BinaryOperator>(I))
        {
            // bin_dst = opr v0 v1
            // cout << "Binary operator " << endl;
            string bin_dst = getVarName(&I);
            // BinaryOperator *instr = dyn_cast<BinaryOperator>(&I);
            Value *v1 = I.getOperand(1);
            Value *v0 = I.getOperand(0);
            bool add_bin_dst = false;
            VariableType bin_mode = aaMode;
            bool bin_exist = false;
            if (currentInfo->isValidVar(bin_dst))
            {
                bin_exist = true;
            }
            if (dyn_cast<Instruction>(v0) != nullptr || dyn_cast<GlobalVariable>(v0) != nullptr)
            {
                // Instruction *v0_inst = dyn_cast<Instruction>(v0);
                // string v0_name = getVarName(v0_inst);
                string v0_name = getValueName(v0);
                if (dyn_cast<Instruction>(v1) != nullptr)
                {
                    Instruction *v1_inst = dyn_cast<Instruction>(v1);
                    string v1_name = getVarName(v1_inst);
                    // v0, v1 are variables
                    if (currentInfo->isValidVar(v1_name))
                    {
                        VariableType v1_ty = currentInfo->getVarType(v1_name);
                        add_bin_dst = true;
                        if (currentInfo->isValidVar(v0_name))
                        {
                            VariableType v0_ty = currentInfo->getVarType(v0_name);
                            // v0, v1 are valid
                            if (v0_ty == v1_ty)
                            {
                                bin_mode = v0_ty;
                            }
                        }
                        else
                        {
                            // only v1 is valid
                            bin_mode = v1_ty;
                        }
                    }
                    else
                    {
                        if (currentInfo->isValidVar(v0_name))
                        {
                            // only v0 are valid
                            VariableType v0_ty = currentInfo->getVarType(v0_name);
                            bin_mode = v0_ty;
                            add_bin_dst = true;
                        }
                        // v0, v1 are not valid
                    }
                }
                else if (currentInfo->isValidVar(v0_name))
                {
                    // v0 is a variable and valid
                    // TODO: analysis the operation by cases
                    VariableType v0_ty = currentInfo->getVarType(v0_name);
                    add_bin_dst = true;
                    bin_mode = v0_ty;
                } // v0 is a variable but invalid, skip
            }
            else if (dyn_cast<Instruction>(v1) != nullptr || dyn_cast<GlobalVariable>(v1) != nullptr)
            {
                // v1 is a variable
                // Instruction *v1_inst = dyn_cast<Instruction>(v1);
                // string v1_name = getVarName(v1_inst);
                string v1_name = getValueName(v1);
                if (currentInfo->isValidVar(v1_name))
                {
                    // v1 is a valid variable
                    VariableType v1_ty = currentInfo->getVarType(v1_name);
                    add_bin_dst = true;
                    bin_mode = v1_ty;
                }
                // else remove bin_dst
            }
            if (add_bin_dst)
            {
                // update bin_dst in currentInfo
                if (bin_exist)
                {
                    currentInfo->setVariableType(bin_dst, bin_mode);
                }
                else
                {
                    ValidVariable *tmp = new ValidVariable(bin_dst, bin_dst,
                                                           I.getFunction()->getName().str(), 0); // todo: add line number
                    tmp->setType(bin_mode);
                    currentInfo->addVariable(tmp);
                }
            }
            else if (bin_exist)
            {
                // remove bin_dst from currentInfo
                currentInfo->removeVariable(bin_dst);
            }
        }
        else if (isa<ICmpInst>(I))
        {
            // cout << "Compare Inst " << endl;
            // icmp_dst = icmp v0 v1
            string icmp_dst = getVarName(&I);
            Value *v1 = I.getOperand(1);
            Value *v0 = I.getOperand(0);

            bool add_icmp_dst = false;
            VariableType icmp_mode = datavariable;
            bool icmp_exist = false;
            if (currentInfo->isValidVar(icmp_dst))
            {
                icmp_exist = true;
            }

            if (dyn_cast<Instruction>(v0) != nullptr || dyn_cast<GlobalVariable>(v0) != nullptr)
            {
                // Instruction *v0_inst = dyn_cast<Instruction>(v0);
                // string v0_name = getVarName(v0_inst);
                string v0_name = getValueName(v0);
                if (dyn_cast<Instruction>(v1) != nullptr)
                {
                    Instruction *v1_inst = dyn_cast<Instruction>(v1);
                    string v1_name = getVarName(v1_inst);
                    if (currentInfo->isValidVar(v0_name))
                    {
                        VariableType v0_type = currentInfo->getVarType(v0_name);
                        add_icmp_dst = true;
                        if (currentInfo->isValidVar(v1_name))
                        {
                            icmp_mode = aaMode;
                        }
                        else
                        {
                            icmp_mode = v0_type;
                        }
                    }
                    else if (currentInfo->isValidVar(v1_name))
                    {
                        add_icmp_dst = true;
                        VariableType v1_type = currentInfo->getVarType(v1_name);
                        icmp_mode = v1_type;
                    }
                }
                else
                {
                    if (currentInfo->isValidVar(v0_name))
                    {
                        add_icmp_dst = true;
                        VariableType v0_type = currentInfo->getVarType(v0_name);
                        icmp_mode = v0_type;
                    }
                }
            }
            else if (dyn_cast<Instruction>(v1) != nullptr || dyn_cast<GlobalVariable>(v1) != nullptr)
            {
                // Instruction *v1_inst = dyn_cast<Instruction>(v1);
                // string v1_name = getVarName(v1_inst);
                string v1_name = getValueName(v1);
                if (currentInfo->isValidVar(v1_name))
                {
                    add_icmp_dst = true;
                    VariableType v1_type = currentInfo->getVarType(v1_name);
                    icmp_mode = v1_type;
                }
            }

            if (add_icmp_dst)
            {
                // update icmp_dst in currentInfo
                if (icmp_exist)
                {
                    currentInfo->setVariableType(icmp_dst, icmp_mode);
                }
                else
                {
                    ValidVariable *tmp = new ValidVariable(icmp_dst, icmp_dst,
                                                           I.getFunction()->getName().str(), 0); // todo: add line number
                    tmp->setType(icmp_mode);
                    currentInfo->addVariable(tmp);
                }
            }
            else if (icmp_exist)
            {
                // remove icmp_dst from currentInfo
                currentInfo->removeVariable(icmp_dst);
            }
        }
        else if (isa<AllocaInst>(I))
        {
            // cout << "Allocate memory " << endl;
            string allo_var = getVarName(&I);
            // cout << "Allocate memory " << allo_var << endl;
        }
        else if (isa<BranchInst>(I))
        {
            BranchInst *branch_inst = dyn_cast<BranchInst>(&I);
            if (branch_inst->isConditional())
            {
                // cout << "Analyze conditional branch" << endl;
                Value *cond = branch_inst->getCondition();
                Instruction *cond_inst = dyn_cast<Instruction>(cond);
                if (cond_inst != nullptr)
                {
                    string cond_name = getVarName(cond_inst);
                    // cout << "Condition branch 1" << cond_name << endl;
                    if (currentInfo->isValidVar(cond_name))
                    {
                        // set the condition variable to control variable
                        // backtrack and update all related variables to control variable
                        // cout << "Condition branch 2" << cond_name << endl;
                        currentInfo->setVariableType(cond_name, controlvariable);
                        Instruction *pre = I.getPrevNonDebugInstruction();
                        while (pre != nullptr)
                        {
                            set<string> var_set;
                            var_set.insert(getVarName(pre));
                            int j = 0;
                            // int op_num = pre->getNumOperands();
                            // cout << "BRANINST: in branch annotation" << op_num << endl;
                            // cout << "NUM" << pre->getNumOperands() << endl;
                            while (j < pre->getNumOperands())
                            {
                                Value *tmp_val = pre->getOperand(j);
                                j++;
                                Instruction *tmp_inst = dyn_cast<Instruction>(tmp_val);
                                if (tmp_inst != nullptr)
                                {
                                    string tmp_name = getVarName(tmp_inst);
                                    var_set.insert(tmp_name);
                                }
                            }
                            for (auto it_var : var_set)
                            {
                                // cout << "BRANINST: in branch annotation, add: " << it_var << endl;
                                if (currentInfo->isValidVar(it_var))
                                {
                                    currentInfo->setVariableType(it_var, controlvariable);
                                }
                            }
                            pre = pre->getPrevNonDebugInstruction();
                        }
                    }
                }
            }
        }
        else if (isa<BitCastInst>(I))
        {
            // BitCastInst *bit_inst = dyn_cast<BitCastInst>(&I);
            string bit_dst = getVarName(&I);
            Value *v0 = I.getOperand(0);
            if (dyn_cast<Instruction>(v0) != nullptr)
            {
                Instruction *v0_inst = dyn_cast<Instruction>(v0);
                string v0_name = getVarName(v0_inst);
                if (currentInfo->isValidVar(v0_name))
                {
                    // add bit_dst with same type as v0
                    VariableType v0_type = currentInfo->getVarType(v0_name);
                    if (currentInfo->isValidVar(bit_dst))
                    {
                        currentInfo->setVariableType(bit_dst, v0_type);
                    }
                    else
                    {
                        ValidVariable *tmp = new ValidVariable(bit_dst, bit_dst,
                                                               I.getFunction()->getName().str(), 0); // todo: add line number
                        tmp->setType(v0_type);
                        currentInfo->addVariable(tmp);
                    }
                }
            }
            else if (dyn_cast<Argument>(v0) != nullptr)
            {
                // v0 is the argument of this function
                // bitcast v0 to bit_dst
                string v0_name = v0->getName().str();
                // cout << "BitCast: v0 is an argument: " << v0_name << endl;
                if (currentInfo->isValidVar(v0_name))
                {
                    // if v0 is a valid variable
                    // add v1 to block variables with the same type as v0
                    VariableType v0_type = currentInfo->getVarType(v0_name);
                    if (currentInfo->isValidVar(bit_dst))
                    {
                        currentInfo->setVariableType(bit_dst, v0_type);
                    }
                    else
                    {
                        ValidVariable *tmp = new ValidVariable(bit_dst, bit_dst,
                                                               I.getFunction()->getName().str(), 0); // todo: add line number
                        tmp->setType(v0_type);
                        currentInfo->addVariable(tmp);
                        // cout << "BitCast: add new argument " << bit_dst << endl;
                    }
                }
            }
        }
        else if (isa<GetElementPtrInst>(I))
        {
            string new_ptr_name = getVarName(&I);
            GetElementPtrInst *gep_inst = dyn_cast<GetElementPtrInst>(&I);
            llvm::Type *sourceTy = gep_inst->getSourceElementType();
            llvm::Type *resultTy = gep_inst->getResultElementType();
            Value *ptr_val = gep_inst->getPointerOperand();
            if (gep_inst->isInBounds())
            {
                string ptr_name = ptr_val->getName().str();
                // TODO: get indices, indices can be tainted variabless
                if (currentInfo->isValidVar(ptr_name))
                {
                    if (currentInfo->isValidVar(new_ptr_name))
                    {
                    }
                    else
                    {
                        ValidVariable *tmp = new ValidVariable(new_ptr_name, new_ptr_name,
                                                               I.getFunction()->getName().str(), 0);
                        VariableType ty = datavariable; // Hard to determine the type
                        tmp->setType(ty);
                        currentInfo->addVariable(tmp);
                        // cout << "GetElementPtr: add new variable " << new_ptr_name << endl;
                    }
                }
            }
        }
        else if (isa<SwitchInst>(I))
        {
            SwitchInst *sw_inst = dyn_cast<SwitchInst>(&I);
            Value *sw_cond = sw_inst->getCondition();
            Instruction *cond_inst = dyn_cast<Instruction>(sw_cond);
            if (cond_inst != nullptr)
            {
                string cond_name = getVarName(cond_inst);
                // cout << "Switch branch condition: " << cond_name << endl;
                if (currentInfo->isValidVar(cond_name))
                {
                    // set the condition variable to control variable
                    currentInfo->setVariableType(cond_name, controlvariable);
                    Instruction *pre = I.getPrevNonDebugInstruction();
                    // backtrack and update all related variables to control variable
                    while (pre != nullptr)
                    {
                        set<string> var_set;
                        var_set.insert(getVarName(pre));
                        int j = 0;
                        // int op_num = pre->getNumOperands();
                        // cout << "BRANINST: in branch annotation" << op_num << endl;
                        // cout << "NUM" << pre->getNumOperands() << endl;
                        while (j < pre->getNumOperands())
                        {
                            Value *tmp_val = pre->getOperand(j);
                            j++;
                            Instruction *tmp_inst = dyn_cast<Instruction>(tmp_val);
                            if (tmp_inst != nullptr)
                            {
                                string tmp_name = getVarName(tmp_inst);
                                var_set.insert(tmp_name);
                            }
                        }
                        for (auto it_var : var_set)
                        {

                            if (currentInfo->isValidVar(it_var))
                            {
                                // cout << "SwitchInst: set to condition variable: " << it_var << endl;
                                currentInfo->setVariableType(it_var, controlvariable);
                            }
                        }
                        pre = pre->getPrevNonDebugInstruction();
                    }
                }
            }
        }
        // else if(isa<CallInst>(I)){
        //     CallInst *call_inst = dyn_cast<CallInst>(&I);
        //     Function *callee = call_inst->getCalledFunction();
        //     if(callee && !callee->isDeclaration()){
        //         // calling internal function
        //         updateVariableTypes(callee,currentInfo,currentInfo);

        //     }
        // }
    }
}

VariableType langGenerator::propagateTypeInst(Instruction *I, aaInfo* currentInfo, DependenceInfo DA){
    VariableType inst_type=datavariable;
    if (isa<StoreInst>(*I)){
        // store operand 0 to operand 1
        Value *v0 = I->getOperand(0);
        string v0_name = getValueName(v0);
        if(currentInfo->isValidVar(v0_name)){
            inst_type=currentInfo->getVarType(v0_name);
        }

    }
    else if(isa<LoadInst>(*I)){
        Value *v0 = I->getOperand(0);
        string v0_name = getValueName(v0);
        if(currentInfo->isValidVar(v0_name)){
            inst_type=currentInfo->getVarType(v0_name);
        }
    }
    else if(isa<BinaryOperator>(*I) || isa<ICmpInst>(*I)){
        Value *v1 = I->getOperand(1);
        Value *v0 = I->getOperand(0);
        VariableType bin_mode = aaMode;
        string v0_name = getValueName(v0);
        string v1_name = getValueName(v1);
        bool v0_valid = currentInfo->isValidVar(v0_name);
        bool v1_valid = currentInfo->isValidVar(v1_name);
        if (v0_valid && !v1_valid)
        {
            inst_type = currentInfo->getVarType(v0_name);
        }else if(!v0_valid && v1_valid){
            inst_type = currentInfo->getVarType(v1_name);
        }else if(v0_valid && v1_valid){
            VariableType v0_ty = currentInfo->getVarType(v0_name);
            VariableType v1_ty = currentInfo->getVarType(v1_name);
            if(bin_mode!=v0_ty && bin_mode!= v1_ty){
                inst_type = v0_ty;
            }
        }
    }
    else if(isa<AllocaInst>(*I)){
        string allo_var = getVarName(I);
        if(currentInfo->isValidVar(allo_var)){
            inst_type = currentInfo->getVarType(allo_var);
        }
    }
    
    else if(isa<BitCastInst>(*I)){
        Value *v0 = I->getOperand(0);
        string v0_name = getValueName(v0);
        if(v0_name==""){
            // not straightforward variable type

        }else if(currentInfo->isValidVar(v0_name)){
            inst_type = currentInfo->getVarType(v0_name);
        }
    }
    else if(isa<GetElementPtrInst>(*I)){
        
    }
    else if(isa<SwitchInst>(*I)){
        SwitchInst *sw_inst = dyn_cast<SwitchInst>(I);
        Value *sw_cond = sw_inst->getCondition();
        string cond_name = getValueName(sw_cond);
        cout << "Switch branch condition: " << cond_name << endl;
        if (currentInfo->isValidVar(cond_name))
        {
            // set the condition variable to control variable
            currentInfo->setVariableType(cond_name, controlvariable);
            Instruction *pre = I->getPrevNonDebugInstruction();
            // backtrack and update all related variables to control variable
            while (pre != nullptr)
            {
                set<string> var_set;
                var_set.insert(getVarName(pre));
                int j = 0;
                while (j < pre->getNumOperands())
                {
                    Value *tmp_val = pre->getOperand(j);
                    j++;
                    string tmp_name = getValueName(tmp_val);
                    var_set.insert(tmp_name);
                }
                for (auto it_var : var_set)
                {

                    if (currentInfo->isValidVar(it_var))
                    {
                        cout << "SwitchInst: set to condition variable: " << it_var << endl;
                        currentInfo->setVariableType(it_var, controlvariable);
                    }
                }
                pre = pre->getPrevNonDebugInstruction();
            }
        }
    }
    else if(isa<CallInst>(*I)){
        CallInst *call_inst = dyn_cast<CallInst>(I);
        Function *callee = call_inst->getCalledFunction();
        int op_num = call_inst->getNumArgOperands();
        int i=0;
        while(i<op_num){
            Value *call_arg = call_inst->getArgOperand(i);
            i++;
            string call_arg_name = getValueName(call_arg);
            inst_type = currentInfo->getVarType(call_arg_name);
            if(inst_type==controlvariable){
                // in the strong mode
                break;
            }
        }
    }
    else{
        // cout << "Unsupported Instruction Type" << endl; 
        // inst_type=controlvariable;
    }
    return inst_type;
}

void langGenerator::updateVariableTypesDependence(Function* F, BasicBlock *entryBB, map<string, aaInfo*> analysisMap, DependenceInfo DA){

    // traverse each BB followed by CFG, check each instruction by type
    map<string, bool> reachedBB;
    for (auto &BB : *F)
    {
        reachedBB[getSimpleNodeLabel(&BB)] = false;
    }
    stack<BasicBlock *> tvStack;
    tvStack.push(entryBB);
    while(!tvStack.empty()){
        BasicBlock *curBB = tvStack.top();
        tvStack.pop();
        aaInfo* currentInfo = analysisMap[getSimpleNodeLabel(curBB)];
        aaInfo* entryInfo = new aaInfo(*currentInfo);
        reachedBB[getSimpleNodeLabel(curBB)] = true;

        for (auto &I : *curBB){
            // check if it is branch instruction
            if (isa<BranchInst>(I))
            {
                BranchInst *branch_inst = dyn_cast<BranchInst>(&I);
                if (branch_inst->isConditional())
                {
                    cout << "Analyze conditional branch" << endl;
                    Value *cond = branch_inst->getCondition();
                    string cond_name = getValueName(cond);
                    Instruction *cond_inst = dyn_cast<Instruction>(cond);
                    
                    // cout << "Condition branch 1" << cond_name << endl;
                    if (currentInfo->isValidVar(cond_name))
                    {
                        // set the condition variable to control variable
                        // backtrack and update all related variables to control variable
                        currentInfo->setVariableType(cond_name, controlvariable);
                        Instruction *pre = I.getPrevNonDebugInstruction();
                    
                        while (pre != nullptr)
                        {
                            string pre_name = getVarName(pre);
                            bool change_all = false;
                            // there must be at least one variable is controlvariable
                            if (pre_name!="" && currentInfo->isValidVar(pre_name))
                            {
                                if (currentInfo->getVarType(pre_name)==controlvariable){
                                    change_all=true;
                                }
                                // cout << "Find control variable: " << pre_name << endl;
                            }
                            int j = 0;
                            // int op_num = pre->getNumOperands();
                            // cout << "BRANINST: in branch annotation" << op_num << endl;
                            // cout << "NUM" << pre->getNumOperands() << endl;
                            while (j < pre->getNumOperands())
                            {
                                Value *tmp_val = pre->getOperand(j);
                                j++;
                                if(dyn_cast<ConstantInt>(tmp_val)==nullptr){
                                    string tmp_name = getValueName(tmp_val);
                                    if (currentInfo->isValidVar(tmp_name) && currentInfo->getVarType(tmp_name)==controlvariable)
                                    {
                                        change_all=true;
                                        break;
                                        currentInfo->setVariableType(tmp_name, controlvariable);
                                    }
                                }
                                
                            }
                            if(change_all){
                                if(pre_name!="" && currentInfo->isValidVar(pre_name)){
                                    currentInfo->setVariableType(pre_name, controlvariable);
                                }
                                int i=0;
                                while (i < pre->getNumOperands())
                                {
                                    Value *tmp_val = pre->getOperand(i);
                                    i++;
                                    if(dyn_cast<ConstantInt>(tmp_val)==nullptr){
                                        string tmp_name = getValueName(tmp_val);
                                        if (currentInfo->isValidVar(tmp_name))
                                        {
                                            currentInfo->setVariableType(tmp_name, controlvariable);
                                        }
                                    }
                                    
                                }
                            }
                            pre = pre->getPrevNonDebugInstruction();
                        }
                    }
                }
                continue;
            }
            
            // errs() << "Inst " << I << "\n";
            // if it is not branch instruction
            if(isSrcInst(&I) || isSrcDepend(&I, DA)){
                // current inst is dependent with source inst
                // cout << "dependent inst \n";
                string inst_name = getVarName(&I);
                if(inst_name!="" && !currentInfo->isValidVar(inst_name)){
                    // add new inst to valid var set
                    VariableType inst_type=propagateTypeInst(&I, currentInfo, DA);
                    ValidVariable *tmp = new ValidVariable(inst_name, inst_name, I.getFunction()->getName().str(), 0);
                    tmp->setType(inst_type);
                    currentInfo->addVariable(tmp);
                    // cout << "Find valid variable: " << inst_name << " with type " << inst_type << endl;
                }else{
                    // store, call, br instructions
                    // no new variable, no need to annotate
                    // set<Value*> arg_set = getInstArguments(&I);
                    // for( auto it_arg: arg_set){
                    //     string arg_name = getValueName(it_arg);
                    //     if(currentInfo->isValidVar(arg_name)){

                    //     }
                    // }
                }
            }else {
                // current inst is not dependent
                // cout << "not dependent with any source\n";
                // if(inst_valid){
                //     // remove from validVar
                //     currentInfo->removeVariable(inst_name);
                //     cout << "remove from valid variable set" << endl;
                // }
            }
            
        }  

        const Instruction *TInst = curBB->getTerminator();
        int NSucc = TInst->getNumSuccessors();
        for (int i = 0; i < NSucc; ++i)
        {
            BasicBlock *Succ = TInst->getSuccessor(i);
            // if (reachedBB[getSimpleNodeLabel(Succ)] == false)
            if (reachedBB[getSimpleNodeLabel(Succ)] == false || !checkEqual(currentInfo, entryInfo))
            {
                // copy the current annotation to the next block
                aaInfo* nextInfo = analysisMap[getSimpleNodeLabel(Succ)];
                combineInfo(currentInfo,nextInfo, TInst->getFunction()->getName().str());
                tvStack.push(Succ);
            }
            // free entryInfo
            
        }
        delete entryInfo;
    }
}

void combineInfo(aaInfo* currentInfo,aaInfo* nextInfo,string func_name){
    // bring current Info to the nextInfo
    for (auto var : currentInfo->block_vars)
    {
        bool add = true;
        for (auto var_n : nextInfo->block_vars)
        {
            if (var->getSource() == var_n->getSource())
            {
                add=false;
                break;
            }
        }
        if (add)
        {
            string inst_name = var->getSource();
            VariableType inst_type = var->getType();
            ValidVariable *tmp = new ValidVariable(inst_name, inst_name, func_name, 0);
            tmp->setType(inst_type);
            nextInfo->addVariable(tmp);
        }
    }
}

bool checkEqual(aaInfo *currentInfo, aaInfo *nextInfo)
{
    if (currentInfo->block_vars.size() != nextInfo->block_vars.size())
    {
        return false;
    }
    bool equal_flag = true;
    for (auto var : currentInfo->block_vars)
    {
        bool check_c = false;
        for (auto var_n : nextInfo->block_vars)
        {
            if (var->getSource() == var_n->getSource())
            {
                check_c = true;
                break;
            }
        }
        if (!check_c)
        {
            cout << "Cannot find " << var << " : " << var->getSource() << endl;
            equal_flag = false;
            break;
        }
    }
    return equal_flag;
    // if(currentInfo->data_vars.size() != nextInfo->data_vars.size()){
    //     return false;
    // }
    // if(currentInfo->valid_stmt.size() != nextInfo->valid_stmt.size()){
    //     return false;
    // }
    // if(currentInfo->control_vars != nextInfo->control_vars){
    //     return false;
    // }
    // if(currentInfo->data_vars != nextInfo->data_vars){
    //     return false;
    // }
    // if(currentInfo->valid_stmt != nextInfo->valid_stmt){
    //     return false;
    // }
    return true;
}

void printState (const vector<uint32_t> state){
    cout << "State: { ";
    for (const auto& s : state)
    {
        cout << s << ";";
    }
    cout << " }" << endl;
}

set<Value*> getInstArguments(Instruction* I){
    // get arguments by instructions
    set<Value*> res;
    if(auto new_I = dyn_cast<StoreInst>(I)){
        Value *v1 = new_I->getOperand(1);
        Value *v0 = new_I->getOperand(0);
        res.insert(v1);
        res.insert(v0);
    }else if(auto new_I = dyn_cast<BinaryOperator>(I)){
        Value *v1 = new_I->getOperand(1);
        Value *v0 = new_I->getOperand(0);
        res.insert(v1);
        res.insert(v0);
    }else if(auto new_I = dyn_cast<ICmpInst>(I)){
        Value *v1 = new_I->getOperand(1);
        Value *v0 = new_I->getOperand(0);
        res.insert(v1);
        res.insert(v0);
    }else if(isa<LoadInst>(*I)){
        Value *v0 = I->getOperand(0);
        res.insert(v0);
    }else if(isa<AllocaInst>(*I)){
        Value *v0 = I;
        res.insert(v0);
    }else if(isa<BitCastInst>(*I)){
        Value *v0 = I->getOperand(0);
        res.insert(v0);
    }else if (isa<GetElementPtrInst>(*I)){
        GetElementPtrInst *gep_inst = dyn_cast<GetElementPtrInst>(I);
        // llvm::Type *sourceTy = gep_inst->getSourceElementType();
        // llvm::Type *resultTy = gep_inst->getResultElementType();
        Value *ptr_val = gep_inst->getPointerOperand();
        res.insert(ptr_val);
    }else if(isa<SwitchInst>(*I)){
        SwitchInst *sw_inst = dyn_cast<SwitchInst>(I);
        Value *sw_cond = sw_inst->getCondition();
        res.insert(sw_cond);
    }else if(isa<CallBase>(*I)){
        if(auto call_inst = dyn_cast<CallInst>(I)){
            int op_num = call_inst->getNumArgOperands();
            int i=0;
            while(i<op_num){
                Value *call_arg = call_inst->getArgOperand(i);
                i++;
                res.insert(call_arg);
            }
        }
    }else {
        // errs() << "Not support instruction " << *I << "\n";
    }
    return res;
}

set<Instruction*> langGenerator::genAndGetSrcInst(Function* F, BasicBlock *entryBB){
    set<Instruction*> srcInstSet;
    map<string, bool> reachedBB;
    for (auto &BB : *F)
    {
        reachedBB[getSimpleNodeLabel(&BB)] = false;
    }
    stack<BasicBlock *> tvStack;
    tvStack.push(entryBB);
    while(!tvStack.empty()){
        BasicBlock *curBB = tvStack.top();
        tvStack.pop();
        aaInfo* currentInfo = analysisMap[getSimpleNodeLabel(curBB)];
        reachedBB[getSimpleNodeLabel(curBB)] = true;

        for (auto &S : *curBB){
            // check if it is the source variable
            // comparing with all the source variables and its related variables

            // errs() << "Inst " << S << "\n";
            string s_name = getVarName(&S);
            if(isSrcVariableByName(godValidVars, s_name)){
                srcInstSet.insert(&S);
                // cout << "Add source var: " << s_name << endl;
            }else{
                set<Value*> arg_set = getInstArguments(&S);
                for( auto it_arg: arg_set){
                    string arg_name = getValueName(it_arg);
                    if(isSrcVariableByName(godValidVars, arg_name)){
                        srcInstSet.insert(&S);
                        string symbol = s_name;
                        string source = s_name;
                        string function = F->getName().str();
                        // cout << "Add source var: " << s_name << endl;
                        ValidVariable *tmp = new ValidVariable(symbol, source, function, 0);
                        godValidVars.insert(tmp);
                        break;
                    }
                }
            }
        }  

        const Instruction *TInst = curBB->getTerminator();
        int NSucc = TInst->getNumSuccessors();
        for (int i = 0; i < NSucc; ++i)
        {
            BasicBlock *Succ = TInst->getSuccessor(i);
            if (reachedBB[getSimpleNodeLabel(Succ)] == false)
            {
                tvStack.push(Succ);
            }
        }
    }
    return srcInstSet;
}

void langGenerator::updateValidStatements(BasicBlock *BB, aaInfo *currentInfo)
{
    // update valid stmt

    set<ValidVariable*> currentUsedValidVars;
    for (auto &I : *BB)
    {

        if (isa<StoreInst>(I))
        {
            // store operand 0 to operand 1
            Instruction *next_inst = I.getNextNode();
            // if next inst is conditional BranchInst, skip this
            if (next_inst != nullptr)
            {
                if (isa<BranchInst>(next_inst))
                {
                    BranchInst *branch_inst = dyn_cast<BranchInst>(next_inst);
                    if (branch_inst->isConditional())
                    {
                        // the whole branch statement should be one statement
                        // not support
                        continue;
                    }
                }
            }
            Value *v1 = I.getOperand(1);
            Value *v0 = I.getOperand(0);

            Instruction *v0_inst = dyn_cast<Instruction>(v0);
            Instruction *v1_inst = dyn_cast<Instruction>(v1);
            bool is_valid = false;
            if (v0_inst != nullptr)
            {
                string v0_name = getVarName(v0_inst);
                VariableType v0_type = currentInfo->getVarType(v0_name);
                if (v1_inst != nullptr)
                {
                    string v1_name = getVarName(v1_inst);
                    if (!currentInfo->isValidVar(v1_name))
                    {
                        continue;
                    }

                    VariableType v1_type = currentInfo->getVarType(v1_name);
                    // in strong mode, set to valid stmt when no controlvariable
                    // in weak mode, set to valid stmt when exist datavariable
                    if (v1_type == v0_type && v1_type == datavariable && aaMode == controlvariable)
                    {
                        // strong mode
                        // v0: number/datavariable; v1: datavariable
                        is_valid = true;
                        ValidVariable* aVar = currentInfo->getValidVar(v1_name);
                        currentUsedValidVars.insert(aVar);
                        if(currentInfo->isValidVar(v0_name)){
                            ValidVariable* aVar0 = currentInfo->getValidVar(v0_name);
                            currentUsedValidVars.insert(aVar0);
                        }

                    }
                    if ((v1_type == datavariable || v0_type == datavariable) && aaMode == datavariable)
                    {
                        // weak mode
                        is_valid = true;
                        if(currentInfo->isValidVar(v1_name)&& v1_type == datavariable){
                            ValidVariable* aVar = currentInfo->getValidVar(v1_name);
                            currentUsedValidVars.insert(aVar);
                        }

                        if(currentInfo->isValidVar(v0_name)&& v0_type == datavariable){
                            ValidVariable* aVar0 = currentInfo->getValidVar(v0_name);
                            currentUsedValidVars.insert(aVar0);
                        }
                    }
                }
                else
                {
                    // this case should not exist
                    if (currentInfo->isValidVar(v0_name) && v0_type == datavariable)
                    {
                        is_valid = true;

                    }
                }
            }
            else if (v1_inst != nullptr)
            {

                string v1_name = getVarName(v1_inst);
                // skip return statement (store 0, %retval
                // redundant, will be removed
                // if(v1_name.find("retval") != std::string::npos){
                //     return;
                // }

                if (currentInfo->isValidVar(v1_name) && currentInfo->getVarType(v1_name) == datavariable)
                {
                    is_valid = true;
                    ValidVariable* aVar = currentInfo->getValidVar(v1_name);
                    currentUsedValidVars.insert(aVar);

                }
            }
            if (is_valid)
            {
                // add into valid stmt
                cout << "Find a store statement" << endl;
                auto inst_line_col = getLineByInst(&I);
                unsigned inst_line = get<0>(inst_line_col);
                unsigned inst_col = get<1>(inst_line_col);
                string inst_file = get<2>(inst_line_col);
                if (inst_line != -1)
                {
                    string inst_str;
                    raw_string_ostream(inst_str) << I;
                    Stmt *newStmt = new Stmt(inst_str);
                    newStmt->usedValidVar = currentUsedValidVars;
                    newStmt->InstSet.push_back(&I);
                    newStmt->setSourceLine(inst_line);
                    newStmt->setSourceCol(inst_col);
                    newStmt->setContainingFilename(inst_file);
                    currentInfo->addValidStmt(newStmt);
                }
            }
        }
        else if (isa<CallInst>(I))
        {

            CallInst *CI = dyn_cast<CallInst>(&I);
            int num_op = CI->getNumOperands();
            for (int i = 0; i < num_op; i++)
            {
                Value *operand = CI->getOperand(i);
                if (Instruction *op_inst = dyn_cast<Instruction>(operand))
                {
                    string op_name = getVarName(op_inst);
                    cout << "Call a function " << op_name << endl;
                }
            }
            Function *fun = CI->getCalledFunction();
            if (fun)
            {
                string fun_name = fun->getName().str();
                vector<string> black_list;
                black_list.push_back("klee_make_symbolic");
                black_list.push_back("llvm.");
                black_list.push_back("exit");
                black_list.push_back("close");
                bool block_fun=false;
                for (auto s : black_list)
                {
                    if (fun_name.find(s) != std::string::npos){
                        block_fun=true;
                        break;
                    }

                }
                if(block_fun){
                    continue;
                }
                cout << "Find a function call " << fun_name << endl;
                AttributeSet attr = fun->getAttributes().getFnAttributes();
                for (auto at_it : attr)
                {
                    auto inst_line_col = getLineByInst(&I);
                    unsigned inst_line = get<0>(inst_line_col);
                    unsigned inst_col = get<1>(inst_line_col);
                    string inst_file = get<2>(inst_line_col);

                    if (inst_line != -1)
                    {
                        string at_name = at_it.getAsString();
                        cout << "Find a statement " << at_name << endl;
                        string inst_str;
                        raw_string_ostream(inst_str) << I;
                        // exludes the case that delares pointer
                        // show be improved later, currently it is hard coded
                        string check_str = "call void @llvm.dbg.declare";
                        if (inst_str.find(check_str) != std::string::npos)
                            break;
                        // find if the attribute is a data var
                        Stmt *newStmt = new Stmt(inst_str);
                        newStmt->usedValidVar = currentUsedValidVars;
                        newStmt->InstSet.push_back(&I);
                        newStmt->setSourceLine(inst_line);
                        newStmt->setSourceCol(inst_col);
                        newStmt->setContainingFilename(inst_file);
                        currentInfo->addValidStmt(newStmt);
                        break;
                    }
                }
            }
            // TODO: handle more cases, such as pointers
        }
        else if (isa<LoadInst>(I))
        {
            // pass, extend on demand in the future
            // load v0 to load_dst
            // string load_dst = getVarName(&I);
            // Value *v0 = I.getOperand(0);
            // Instruction *val0 = dyn_cast<Instruction>(v0);
        }
        else if (isa<BinaryOperator>(I))
        {
            // pass, extend on demand in the future
            // bin_dst = opr v0 v1
            // string bin_dst = getVarName(&I);
            // BinaryOperator *instr = dyn_cast<BinaryOperator>(&I);
            // Value *v1 = I.getOperand(1);
            // Value *v0 = I.getOperand(0);
            // Instruction *val0 = dyn_cast<Instruction>(v0);
        }
        else if (isa<ICmpInst>(I))
        {
            // pass, extend on demand in the future
            // string icmp_dst = getVarName(&I);
            // Value *v1 = I.getOperand(1);
            // Value *v0 = I.getOperand(0);
        }
        else if (isa<AllocaInst>(I))
        {
            // pass, extend on demand in the future
            // string allo_var = getVarName(&I);
        }
    }
}


void langGenerator::updateValidStatementsDependence(Function* F, BasicBlock *entryBB, map<string, aaInfo*> analysisMap, DependenceInfo DA){
    set<ValidVariable*> currentUsedValidVars;
    bool has_dependent_var=false;
    
    // initial controlled variables as the src of dependence analysis
    set<Instruction*> srcInstSet = srcValidVars;
    // for( auto &BB : *F){
    //     for (auto &S : BB){
    //         // check if it is the source variable
    //         string s_name = getValueName(&S);
    //         if(isSrcVariableByName(godValidVars, s_name)){
    //             // skip this inst
    //             srcInstSet.insert(&S);
    //         }
    //     }
    // }

    // traverse the cfg again
    map<string, bool> reachedBB;
    for (auto &BB : *F)
    {
        reachedBB[getSimpleNodeLabel(&BB)] = false;
    }
    stack<BasicBlock *> tvStack;
    tvStack.push(entryBB);
    while(!tvStack.empty()){
        BasicBlock *curBB = tvStack.top();
        tvStack.pop();
        aaInfo* currentInfo = analysisMap[getSimpleNodeLabel(curBB)];
        reachedBB[getSimpleNodeLabel(curBB)] = true;

        for(auto &T : *curBB){
            if(propagateTypeInst(&T, currentInfo, DA)==controlvariable){
                continue;
            }   
            has_dependent_var=false;
            for(auto src_it : srcInstSet){
                Instruction *S = const_cast<Instruction*>(src_it);
                if(S!=&T){
                    if(auto D = DA.depends(S,&T, true)){
                        // this instruction contains tainted variables
                        // Case 1: the next inst is conditional BranchInst, skip this
                        Instruction *next_inst = T.getNextNode();
                        if (next_inst != nullptr)
                        {
                            if (isa<BranchInst>(next_inst))
                            {
                                BranchInst *branch_inst = dyn_cast<BranchInst>(next_inst);
                                if (branch_inst->isConditional())
                                {
                                    // the whole branch statement should be one statement
                                    continue;
                                }
                            }
                        }
                        // Case 2: other instructions, send to the next step
                        has_dependent_var=true;
                        break;
                    }
                }
            }
            if(has_dependent_var){
                // Case 2: T is a store instruction
                if (isa<StoreInst>(T)){
                    // check if contains control variable
                    // add into valid stmt
                    auto inst_line_col = getLineByInst(&T);
                    unsigned inst_line = get<0>(inst_line_col);
                    unsigned inst_col = get<1>(inst_line_col);
                    string inst_file = get<2>(inst_line_col);
                    if (inst_line != -1)
                    {
                        
                        string inst_str;
                        raw_string_ostream(inst_str) << T;
                        Stmt *newStmt = new Stmt(inst_str);
                        newStmt->usedValidVar = currentUsedValidVars;
                        newStmt->InstSet.push_back(&T);
                        newStmt->setSourceLine(inst_line);
                        newStmt->setSourceCol(inst_col);
                        newStmt->setContainingFilename(inst_file);
                        currentInfo->addValidStmt(newStmt);
                    }
                }
                else if(isa<CallInst>(T)){
                    // check if contains control variable

                    CallInst *CI = dyn_cast<CallInst>(&T);
                    Function *fun = CI->getCalledFunction();
                    if (fun)
                    {
                        string fun_name = fun->getName().str();
                        vector<string> black_list;
                        black_list.push_back("klee_make_symbolic");
                        black_list.push_back("llvm.");
                        black_list.push_back("exit");
                        black_list.push_back("close");
                        black_list.push_back("error");
                        black_list.push_back("warning");
                        black_list.push_back("kill");
                        black_list.push_back("sleep");
                        black_list.push_back("free");
                        bool block_fun=false;
                        
                        for (auto s : black_list)
                        {
                            if (fun_name.find(s) != std::string::npos){
                                block_fun=true;
                                break;
                            }

                        }
                        // skip all call instructions
                        // block_fun=true;
                        if(block_fun){
                            continue;
                        }
                        string inst_str;
                        raw_string_ostream(inst_str) << T;
                        string check_str = "call void @llvm.dbg.declare";
                        if (inst_str.find(check_str) != std::string::npos){
                            continue;
                        }

                        cout << "Find a function " << fun_name << endl;
                        AttributeSet attr = fun->getAttributes().getFnAttributes();

                        auto inst_line_col = getLineByInst(&T);
                        unsigned inst_line = get<0>(inst_line_col);
                        unsigned inst_col = get<1>(inst_line_col);
                        string inst_file = get<2>(inst_line_col);
                        
                        Stmt *newStmt = new Stmt(inst_str);
                        newStmt->usedValidVar = currentUsedValidVars;
                        newStmt->InstSet.push_back(&T);
                        newStmt->setSourceLine(inst_line);
                        newStmt->setSourceCol(inst_col);
                        newStmt->setContainingFilename(inst_file);
                        currentInfo->addValidStmt(newStmt);

                        // if (inst_line != -1)
                        // {
                        //     for (auto at_it : attr)
                        //     {
                        //     // TODO: remove useless printf ?
                            
                        //         string at_name = at_it.getAsString();
                        //         cout << "Find a statement " << at_name << endl;
                        //         if(currentInfo->isValidVar(at_name)){
                        //             // find if the attribute is a data var
                        //             if(currentInfo->getVarType(at_name)==datavariable){
                        //                 add_call=true;
                        //                 break;
                        //             }
                        //         }

                        //         // exludes the case that delares pointer
                                
                        //     }
                        // }

                    }
                }
                // else if (isa<LoadInst>(T))
                // {
                //     // add into valid stmt
                //     // cout << "Find a load statement" << endl;
                //     pair<unsigned, unsigned> inst_line_col = getLineByInst(&T);
                //     unsigned inst_line = inst_line_col.first;
                //     unsigned inst_col = inst_line_col.second;
                //     if (inst_line != -1)
                //     {
                        
                //         string inst_str;
                //         raw_string_ostream(inst_str) << T;
                //         Stmt *newStmt = new Stmt(inst_str);
                //         newStmt->usedValidVar = currentUsedValidVars;
                //         newStmt->InstSet.push_back(&T);
                //         newStmt->setSourceLine(inst_line);
                //         newStmt->setSourceCol(inst_col);
                //         currentInfo->addValidStmt(newStmt);
                //     }
                // }
            }    
        }

        const Instruction *TInst = curBB->getTerminator();
        int NSucc = TInst->getNumSuccessors();
        for (int i = 0; i < NSucc; ++i)
        {
            BasicBlock *Succ = TInst->getSuccessor(i);
            if (reachedBB[getSimpleNodeLabel(Succ)] == false)
            {
                tvStack.push(Succ);
            }
        }
    }
}

bool isSrcVariableByInst(set<ValidVariable*> srcSet, const Instruction *ins){
    string ins_name;
    bool flag=false;
    // store, load, call
    // return false for other instructions
    // if (isa<StoreInst>(*ins)){
    // }
    for (auto it_var : srcSet)
    {
        string tmp_name = it_var->getSymbol();
        if(ins_name.compare(tmp_name)){
            flag=true;
            break;
        }
    }
    return flag;
    
}

bool isSrcVariableByName(set<ValidVariable*> srcSet, string name){
    for (auto it_var : srcSet)
    {
        string tmp_name = it_var->getSymbol();
        if(!name.compare(tmp_name)){
            return true;
        }
    }
    return false;
}

void langGenerator::globalInitialization()
{
    // backup function
    static LLVMContext Context;
    SMDiagnostic Err;
    auto M = parseIRFile(filePath, Err, Context);
    if (M == nullptr)
    {
        printf("error: failed to load LLVM IR file %s\n", filePath.c_str());
        exit(1);
    }
    Function *F = M->getFunction(entryFunction);
    // myInlineFunctions(F);

    // auto &FL = M->getFunctionList();
    // for (auto &F : FL){
    for (auto &BB : *F)
    {
        cout << "Initializing a BB " << endl;
        set<ValidVariable *> empty_block_var;
        vector<Stmt *> empty_stmt;
        aaInfo *emptyInfo = new aaInfo(empty_block_var, empty_stmt);

        analysisMap[getSimpleNodeLabel(&BB)] = emptyInfo;
    }
    // }
    // inlinedF = F;
    // cout << inlinedF << endl;
    cout << "==== Global Initialization ====" << endl;
}

void langGenerator::generate()
{
    static LLVMContext Context;
    SMDiagnostic Err;
    auto M = parseIRFile(filePath, Err, Context);
    if (M == nullptr)
    {
        printf("Error: failed to load LLVM IR file %s\n", filePath.c_str());
        exit(1);
    }

    Function *F = M->getFunction(entryFunction);
    // myInlineFunctions(F);

    // Add analysis passer
    auto &SE = FAM.getResult<ScalarEvolutionAnalysis>(*F);
    auto &LI = FAM.getResult<LoopAnalysis>(*F);
    auto &DA = FAM.getResult<DependenceAnalysis>(*F);
    // auto &DF = FAM.getResult<DataFlowAnalysis>(*F);


    // Debugging: checking dependences
    // for (auto &BB : *F)
    // {
    //     for (auto &I : BB)
    //     {
    //         errs() << "For inst " << I << "\n";
    //         for (auto &J : BB){
    //             if(&I!=&J){
    //                 if(auto D = DA.depends(&I,&J,true)){
    //                     errs() << "\t Dependent on inst " << J ;
    //                     if(D->isFlow()){
    //                         Instruction* src_inst = D->getSrc();
    //                         errs() << "\t isFlow ";
    //                     }
    //                     errs() << "\n";
    //                 }
    //             }

    //         }
    //     }
    // }

    for (auto &BB : *F) {
        for (auto &I : BB) {
            if (auto *DDI = llvm::dyn_cast<llvm::DbgDeclareInst>(&I)) {
                addressToDebugMap[DDI->getAddress()] = DDI;
            }
        }
    }

    for (auto &BB : *F) {
        for (auto &I : BB) {
            if (addressToDebugMap.find(&I) == addressToDebugMap.end()) {
                continue;
            }
            auto DVI = addressToDebugMap.at(&I);
            if (auto *DIVar = llvm::dyn_cast<llvm::DIVariable>(DVI->getVariable())) {
                auto orig_var = DIVar->getName().str();
                auto *Scope = DIVar->getScope();
                if (auto *SP = llvm::dyn_cast<llvm::DISubprogram>(Scope)) {
                    auto orig_func = SP->getName().str();
                    // cout << "Source var map (1): " << orig_var << " - " << orig_func << " - " << getVarName(&I) << endl;
                    origVarToVarMap[{ orig_var, orig_func }] = getVarName(&I);
                } else {
                    continue;
                }
            } else {
                continue;
            }
        }
    }

    for (auto& var: godValidVars) {
        if (origVarToVarMap.find({var->getSource(), var->getFunction()}) != origVarToVarMap.end()) {
            cout << "[*] Source var map (2): " << var->getSource()
                 << " - " << var->getFunction()
                 << " - " << origVarToVarMap.at({var->getSource(), var->getFunction()}) << endl;
            var->setSymbol(origVarToVarMap.at({var->getSource(), var->getFunction()}));
            // var->setFunction("_ZN3xop14RtspConnection6OnReadERNS_12BufferReaderE"); // for RtspServer testing
            var->setFunction(entryFunction);
        }
    }

    for (auto &BB : *F)
    {
        // cout << "Initializing a BB " << endl;
        set<ValidVariable *> empty_block_var;
        vector<Stmt *> empty_stmt;
        aaInfo *emptyInfo = new aaInfo(empty_block_var, empty_stmt);

        analysisMap[getSimpleNodeLabel(&BB)] = emptyInfo;
    }

    cout << "[+] Getting entry basic block ..." << endl;

    BasicBlock *entryBB;
    bool found = false;
    for (auto &BB : *F)
    {
        string bb_name = getSimpleNodeLabel(&BB);
        // cout << "checking BB " << bb_name << endl;
        for (auto &I : BB)
        {
            // CallBase *CB;
            if (isa<CallInst>(&I))
            {
                // errs() << I << "\n";
                CallInst *CI = dyn_cast<CallInst>(&I);
                int num_op = CI->getNumOperands();
                Function *fun = CI->getCalledFunction();
                string fun_name;
                if (fun)
                    fun_name = fun->getName().str();
                else
                    raw_string_ostream(fun_name) << I;
                string check_str = "klee_make_symbolic";
                if (fun_name.find(check_str) != std::string::npos)
                {
                    entryFunction = bb_name;
                    entryBB = &BB;
                    cout << "[+] Find the entry block " << bb_name << endl;
                    found = true;
                    break;
                }
            }
            if(isa<InvokeInst>(I)){
                // errs() << I << "\n";
                InvokeInst *CI = dyn_cast<InvokeInst>(&I);
                Function *fun = CI->getCalledFunction();
                string fun_name;
                if (fun)
                    fun_name = fun->getName().str();
                else
                    raw_string_ostream(fun_name) << I;
                // errs() << "FUN NAME:" << fun_name << "\n";
                string check_str = "klee_make_symbolic";
                if (fun_name.find(check_str) != std::string::npos)
                {
                    entryFunction = bb_name;
                    entryBB = &BB;
                    cout << "[+] Find the entry block " << bb_name << endl;
                    found = true;
                    break;
                }

            }
        }
        if (found)
        {
            break;
        }
    }
    if (!found)
    {
        cout << "Error: Cannot find the entry block." << endl;
        exit(0);
    }

    // For debugging, set entryBlock to main
    // entryBB = &F->getEntryBlock();

    // Step 2: Update source point instruction set
    cout << "[+] Building source instruction set..." << endl;
    srcValidVars = genAndGetSrcInst(F, &F->getEntryBlock());

    // For debugging
    // printWholeFunction(F);

    // Step 3: Annotate data and control variables
    // Method 2: Using dependence analysis
    cout << "[+] Finding valid variables..." << endl;
    // updateVariableTypesDependence(F, entryBB, analysisMap, DA);
    updateVariableTypesDependence(F, &F->getEntryBlock(), analysisMap, DA);


    // // Control and Data Variables have been annotated
    // // Step4: identify valid statement, traverse the basic blocks again
    // // Method 1: without dependency analysis
    // cout << "Extracting valid statements..." << endl;
    // for (auto &BB : *F)
    // {
    //     reachedBB[getSimpleNodeLabel(&BB)] = false;
    // }
    // entryBB = &F->getEntryBlock();
    // firstNode = make_pair(entryBB, entryBB);
    // traversalStack.push(firstNode);
    // cout << "Adding " << getSimpleNodeLabel(entryBB) << " to the stack\n";

    // while (!traversalStack.empty())
    // {
    //     pair<BasicBlock *, BasicBlock *> analysisNode = traversalStack.top();
    //     traversalStack.pop();

    //     BasicBlock *BB = analysisNode.first;
    //     reachedBB[getSimpleNodeLabel(BB)] = true;
    //     aaInfo *currentInfo = analysisMap[getSimpleNodeLabel(BB)];

    //     // identify valid statements, annotate aaInfo*
    //     // cout << "Updating valid statments..." << endl;
    //     // updateValidStatements(BB, currentInfo);

    //     // cout << "updated one block" << endl;

    //     const Instruction *TInst = BB->getTerminator();
    //     int NSucc = TInst->getNumSuccessors();
    //     for (int i = 0; i < NSucc; ++i)
    //     {
    //         BasicBlock *Succ = TInst->getSuccessor(i);

    //         // Fixpoint Condition: each node only reach once
    //         if (reachedBB[getSimpleNodeLabel(Succ)] == false)
    //         {

    //             pair<BasicBlock *, BasicBlock *> succAnalysisNode = make_pair(Succ, BB);
    //             traversalStack.push(succAnalysisNode);
    //             string BBLabel = getSimpleNodeLabel(Succ);
    //             cout << "Adding " << getSimpleNodeLabel(Succ) << " to the stack\n";
    //         }
    //     }
    // }

    // Method 2: calling dependenceAnalysis APIs
    // Step4: identify valid statement
    cout << "[+] Finding valid statements..." << endl;
    updateValidStatementsDependence(F, entryBB, analysisMap, DA);

    set<ValidVariable *> validVarSet;
    set<Stmt *> validStatementSet;

    // traverse the analysis map: map<string, aaInfo*> analysisMap;
    // get the union set;
    for (auto it = analysisMap.begin(); it != analysisMap.end(); ++it)
    {
        string key = it->first;
        aaInfo *val = it->second;
        auto val_stmt = val->valid_stmt;
        vector<Stmt*> clean_valid_stmt;
        for (auto it_stmt : val_stmt)
        {
            // remove duplicates
            updateStmtCode(it_stmt);
            string itSrcCode = it_stmt->sourceCode;
            bool black_stmt= isBlackStmt(itSrcCode);
            if(!black_stmt){
                bool add_flag0 = true;
                bool add_flag1 = true;
                for (auto it_val_stmt : validStatementSet){
                    if(it_val_stmt->getLine()==it_stmt->getLine()){
                        add_flag0=false;
                        break;
                    }
                }
                for(auto it_val_stmt : clean_valid_stmt){
                    if(it_val_stmt->getLine()==it_stmt->getLine()){
                        add_flag1=false;
                        break;
                    }
                }
                if(add_flag0){
                    validStatementSet.insert(it_stmt);
                }
                if(add_flag1){
                    clean_valid_stmt.push_back(it_stmt);
                }
            }
        }
        val->valid_stmt = clean_valid_stmt;

        set<ValidVariable *> val_var = val->block_vars;
        for (auto it_data_var : val_var)
        {
            string it_name = it_data_var->getSource();
            if (validVarSet.find(it_data_var) == validVarSet.end() && it_data_var->getType() == datavariable)
            {
                // need to check if the name has been existing
                bool add_flag = true;
                for (auto it_val_var : validVarSet)
                {
                    if (it_val_var->getSource() == it_name)
                    {
                        // the name already exist
                        add_flag = false;
                        break;
                    }
                }
                if (add_flag)
                {
                    validVarSet.insert(it_data_var);
                }
            }
            if (it_data_var->getType() == controlvariable)
            {
                // set to controlvariable if exists
                for (auto it_val_var : validVarSet)
                {
                    if (it_val_var->getSource() == it_name)
                    {
                        // the name already exist
                        it_val_var->setType(controlvariable);
                    }
                }
            }
        }
    }
    synLang.stmts = validStatementSet;
    synLang.vars = validVarSet;

    // debug: print the full annotation of the program
    printAnnotation(&analysisMap);

    // debug
    // printLang();

    // Step 5: extract sequential statements from path
    BasicBlock *currBB;
    set<IStmt> inter_statement;
    cout << "[+] Extracting composable valid statements... " << paths.size() << " in total" << endl;
    cout << "[+] Total gadgets: " << gadgetLines.size() << endl;
    for (auto& line : gadgetLines) {
        cout << line << " ";
    }
    cout << endl;
    int count = 0;
    for (auto &path : paths)
    {
        int branchLoc = 0;
        currBB = &F->getEntryBlock();
        vector< pair<string, vector<unsigned char> > > assign = path.assignments;

        GStmt* grammarStmts = new GStmt();
        grammarStmts->type = repeatable;
        grammarStmts->gstmt = {};
        grammarStmts->repeatN = count;
        grammarStmts->repeatNSet = {};
        grammarStmts->traceHash = "";
        grammarStmts->assignments = assign;

        cout << "    Path " << ++count << " (" << path.path.size() << "): " << endl;
        if (count > 2000) {
            cout << "Too many paths, skip the rest" << endl;
            break;
        }

        int pathSize = path.path.size();
        int numGadgets = 0;

        while (currBB != nullptr)
        {
            BasicBlock *BB = currBB;
            // cout << "Current block: " << getSimpleNodeLabel(BB) << endl;

            aaInfo *currentInfo = analysisMap[getSimpleNodeLabel(BB)];
            // cout << "next branch: " << path.path[branchLoc] << endl;
            for (auto &stmt : currentInfo->valid_stmt)
            {
                grammarStmts->gstmt.push_back(stmt);
                uint64_t line = stmt->getLine();
                cout << line << " ";
                if (gadgetLines.find(line) != gadgetLines.end())
                {
                    numGadgets++;
                }
            }

            const Instruction *TInst = BB->getTerminator();
            int NSucc = TInst->getNumSuccessors();
            if (NSucc > 2)
            {
                cout << "[-] Branching more than 2 ways, not supported yet" << endl;
                continue;
            }

            if (NSucc > 0)
            {
                int i = 0;
                if (NSucc == 2)
                {
                    if (branchLoc >= pathSize)
                    {
                        cout << "[-] Branch encountered where not specified in path -> skipping..." << endl;
                        break;
                    }

                    // 0 corresponds to true branch
                    i = 1 - path.path[branchLoc];
                    // cout << " -> Branching to " << (i ? "false branch" : "true branch") << endl;
                    branchLoc++;
                }

                // follow the path from KLEE and get the successor in CFG
                currBB = TInst->getSuccessor(i);
            } else {
                if (branchLoc < pathSize)
                {
                    cout << "[-] No successor block before end of path!" << endl;
                }
                break;
            }
        }
        if (grammarStmts->gstmt.empty())
        {
            cout << "[-] Empty composed statement" << endl;
            cout << endl;
            continue;
        }
        // cout << " (" << grammarStmts->gstmt.size() << ")"  << endl;
        // cout << numGadgets << " gadgets in path" << endl;
        // cout << endl;

        // cout << "stmt count (pre insert): " << synLang.grammar_stmts.size() << endl;
        // cout << "does it have grammarStmts: " << (synLang.grammar_stmts.find(grammarStmts) != synLang.grammar_stmts.end()) << endl;

        cout << "[+] Adding statements into the grammar..." << endl;
        synLang.grammar_stmts.insert(grammarStmts);
        // cout << "stmt count (post insert): " << synLang.grammar_stmts.size() << endl;
    }

    FiniteAutomaton<vector<uint32_t>, uint32_t, vector_state_hash> newDfa{
        nullptr, nullptr, nullptr, {}, nullptr
    };

    if (!use_lstar) {
        // Algorithm 1: Passive Learning
        cout << "[+] Getting DFA by passive learning..." << endl;
        std::shared_ptr<DopplerQuery> query = std::make_shared<DopplerQuery>(synLang);

        auto dfa = query->directFA();
        // create isomorphic dfa with compatible type for RE conversion
        auto alpha = std::make_shared<unordered_set<uint32_t>>(dfa.getAlphabetSet());
        auto old_states = dfa.getStateList();
        auto old_transitions = dfa.getTransitions();
        auto old_to_new_map = unordered_map<unordered_set<vector<uint32_t>, vector_state_hash>, vector<uint32_t>, new_state_hash>();
        // construct new states
        auto new_states = std::make_shared<unordered_set<vector<uint32_t>, vector_state_hash>>();
        uint32_t id = 0;
        for (auto &state: old_states) {
            vector<uint32_t> new_state{id++};
            new_states->insert(new_state);
            old_to_new_map[state] = new_state;
        }
        // construct new transitions
        auto new_transitions = std::make_shared<unordered_map<std::pair<vector<uint32_t>, uint32_t>, vector<uint32_t>, pair_key_hash<vector_state_hash, hash<uint32_t>>>>();
        for (auto &[state_alpha, n_state]: old_transitions) {
            auto new_state = old_to_new_map[state_alpha.first];
            auto a = state_alpha.second;
            (*new_transitions)[{new_state, a}] = (old_to_new_map[n_state]);
        }

        auto new_accept_states = std::make_shared<unordered_set<vector<uint32_t>, vector_state_hash>>();
        for (auto &state: dfa.getAcceptStates()) {
            new_accept_states->insert(old_to_new_map[state]);
        }
        cout << "[+] Converting dfa type..." << endl;
        newDfa = FiniteAutomaton<vector<uint32_t>, uint32_t, vector_state_hash>{
                alpha,
                new_states,
                new_transitions,
                old_to_new_map[dfa.getStartState()],
                new_accept_states
        };
        // cout << "Minimizing dfa..." << endl;
        // newDfa.minimize();
    } else {
        // Algorithm 2: Lstar learning
        cout << "[+] Getting DFA by L* learning..." << endl;
        std::shared_ptr<Query<uint32_t>> q = std::make_shared<DopplerQuery>(synLang);
        LStar<uint32_t> lstar{q};
        newDfa = lstar.run();
    }

    newDfa.printStats();

    auto states = newDfa.getStateList();
    auto transitions = newDfa.getTransitions();
    auto alphabet = newDfa.getAlphabetSet();
    auto finalStates = newDfa.getAcceptStates();
    auto startState = newDfa.getStartState();

    cout << "[+] Saving dfa to " << this->dfa_path << endl;
    // For debugging
    // std::filesystem::path cwd = std::filesystem::current_path() / "doppler-run" / "dfa.txt";
    std::filesystem::path cwd = this->dfa_path;
    ofstream dfaTxt;
    dfaTxt.open(cwd);

    dfaTxt << "#states" << endl;
    for (const auto& state : states) {
        dfaTxt << "s";
        for (const auto& c : state) {
            dfaTxt << c;
        }
        dfaTxt << endl;
    }
    dfaTxt << "#initial" << endl;
    dfaTxt << "s";
    for (const auto& c : startState) {
        dfaTxt << c;
    }
    dfaTxt << endl;
    dfaTxt << "#accepting" << endl;
    for (const auto& s : finalStates) {
        dfaTxt << "s";
        for (const auto& c: s) {
            dfaTxt << c;
        }
        dfaTxt << endl;
    }
    dfaTxt << "#alphabet" << endl;
    for (const auto& c: alphabet) {
        dfaTxt << c << endl;
    }
    dfaTxt << "#transitions" << endl;
    for (const auto& kv : transitions) {
        dfaTxt << "s";
        for (const auto& c : kv.first.first) {
            dfaTxt << c;
        }
        dfaTxt << ":" << kv.first.second << ">s";
        for (const auto& c : kv.second) {
            dfaTxt << c;
        }
        dfaTxt << endl;
    }
    dfaTxt.close();

    cout << "[+] Finish DFA generation" << endl;
    // exit(0);

    cout << "[+] Getting regexp from DFA... " << endl;
    string regexp="";
    if(!skip_reg){
        // Algorithm 1
        // RegularExpression* regexpp = FSAtoREConverter<uint32_t>::toRE(&newDfa);
        // regexp = regexpp->toString();

        // Algorithm 2
        try{
            regexp = FSAtoREConverter<uint32_t>::toREStateElimination(&newDfa);
        }catch(...){
            cout << "[+] Use external tools to generate regular expression from generated dfa..." << endl;
        }
    }else {
        cout << "[-] Skip to step of converting DFA to regular expression..." << endl;
    }
    

    synLang.regexp = regexp;
    return;

    // step 4: refine grammar from sequence of valid statements
    // step 4.1: check repetition times
    for (auto vs : synLang.stmts)
    {
        // traverse elements in valid statement set
        int max_repeatable = 1;
        set<int> possible_repeat;
        GStmt* tmp_stmt = new GStmt();

        for (auto sm : inter_statement)
        {
            int tmp_repeat = checkRepetitionTimes(vs, sm);
            max_repeatable = max(max_repeatable, tmp_repeat);
            possible_repeat.insert(tmp_repeat);
            cout << std::to_string(tmp_repeat) << ";";
        }
        cout << endl;
        bool conti = checkContinuty(possible_repeat);
        if (conti)
        {
            // legal for vs*n format
            // cout << "Stmt " << vs->code << " is acceptable for repetition rules" << endl;
            tmp_stmt->type = repeatable;
            tmp_stmt->repeatN = max_repeatable;
            tmp_stmt->gstmt.push_back(vs); // only one stmt

        }
        else
        {
            // not for continuous n
            // cout << "Stmt " << vs->code << " not acceptable for repetition rules" << endl;
            tmp_stmt->type = others;
            tmp_stmt->repeatNSet = possible_repeat;
        }
        // add to the language grammar
        synLang.grammar_stmts.insert(tmp_stmt);

    }

    cout << "[+] Finish the grammar generation" << endl;
    return;
};

bool checkContinuty(set<int> times)
{
    if(times.size()<=1){
        return false;
    }
    int last = 0;
    for (auto it : times)
    {
        if (it != 0 && it != last + 1)
        {
            return false;
        }
        else
        {
            last = it;
        }
    }
    return true;
}

int checkRepetitionTimes(Stmt *target, vector<Stmt *> oneStmtPath)
{
    int res = 0;
    int startFlag = 0;
    int repeat = 0;
    for (auto tmp_stmt : oneStmtPath)
    {
        // cout << "check repetitions " << tmp_stmt->code << "===" << target->code << endl;
        if (tmp_stmt->code == target->code)
        {
            // cout << "EQUAL" << endl;
            if (startFlag == 0)
            {
                startFlag = 1;
                repeat++;
            }
            else
            {
                repeat++;
            }
        }
        else
        {
            if (startFlag == 1)
            {
                // end of the repetition
                startFlag = 0;
                res = max(res, repeat);
                repeat = 0;
            }
        }
    }
    res = max(res, repeat);
    return res;
}

void langGenerator::printAnnotation(map<string, aaInfo *> *analysisMap)
{
    // print the annotation in each basic block
    cout << "==== PRINT ANNOTATION MAP ====" << endl;
    for (auto it = analysisMap->begin(); it != analysisMap->end(); ++it)
    {
        string key = it->first;
        aaInfo *val = it->second;
        vector<Stmt *> val_stmt = val->valid_stmt;
        set<ValidVariable *> val_var = val->block_vars;
        cout << "block " << key << endl;
        cout << "variable annotation:" << endl;
        for (auto valid_var : val_var)
        {
            cout << valid_var->getSource() << " : " << valid_var->getType() << endl;
        }
        cout << "statement annotation:" << endl;
        for (auto valid_stmt : val_stmt)
        {
            string stmt_str = (use_src
                                   ? getSourceByLine(valid_stmt->getLine(), valid_stmt->getCol(),
                                                     valid_stmt->getContainingFilename())
                                   : valid_stmt->code);
            cout << stmt_str << endl;
        }
    }
    cout << "==== END OF THE ANNOTATION MAP ====" << endl;
}

void langGenerator::updateStmtCode(Stmt* it){
    string stmt_str;
    stmt_str = (use_src
                    ? getSourceByLine(it->getLine(), it->getCol(),
                                      it->getContainingFilename())
                    : it->code);
    it->sourceCode = stmt_str;

}

void langGenerator::printLang()
{
    // print synLang
    cout << "[+] Print the grammar..." << endl;
    set<ValidVariable *> lanVar = synLang.vars;
    set<Stmt *> lanStmt = synLang.stmts;
    set<GStmt *> lanGStmt = synLang.grammar_stmts;
    string reg_grammar = synLang.regexp;
    printf("Variable var    \n\t");
    for (ValidVariable *it : lanVar)
    {
        if (it->getType() == datavariable)
            printf("%s, ", it->getSource().c_str());
    }
    printf("\n");
    printf("Neat Variable var    \n\t");
    for (ValidVariable *it : lanVar)
    {
        if (it->getType() == datavariable){
            for(auto& [key, val] : origVarToVarMap){
                if (it->getSource() == val){
                    printf("%s, ", it->getSource().c_str());
                    break;
                }
                
            }
        }
            
    }
    printf("\n");
    printf("Valid Statement VS ::= \n");
    for (Stmt *it : lanStmt)
    {
        string stmt_str;
        // printf("| %s \n", it->code.c_str()); // for testing
        stmt_str = (use_src
                        ? it->alphabetID +": " + getSourceByLine(it->getLine(), it->getCol(), it->getContainingFilename())
                        : it->alphabetID +": " + it->code);
        printf("| %s \n", stmt_str.c_str());
    }
    printf("\n");
//    printf("Statement s ::= \n");
//    printf("%s \n", reg_grammar.c_str());
//     cout << "statements in total " << lanGStmt.size() << endl;
//      for (const GStmt* it : lanGStmt)
//      {
//          string stmt;
// //         GStmtType stType = it.type;
// //         Stmt *stmt_it = it.gstmt.front();
// //         switch (stType)
// //         {
// //         case composable:
// //             printf("===");
// //             break;
// //         case repeatable:
// //             stmt = (use_src
// //                         ? getSourceByLine(stmt_it->getLine(), stmt_it->getCol(), srcLines)
// //                         // llvmToSourceString(stmt_it->InstSet.front(), srcLines)
// //                         : stmt_it->code) +
// //                    " * " + std::to_string(it.repeatN);
// //             break;
// //         case others:
// //             printf("===");
// //             break;
// //         }
//         if (it->gstmt.empty())
//             continue;

//         for (Stmt *stmt_it : it->gstmt) {
//           stmt += (use_src
//                   ? getSourceByLine(stmt_it->getLine(), stmt_it->getCol(),
//                                     stmt_it->getContainingFilename())
//                   // llvmToSourceString(stmt_it->InstSet.front(), srcLines)
//                   : stmt_it->code)
//                   + ";";
//         }
//         if (!trim(stmt).empty())
//             printf("|%s\n", stmt.c_str());
//      }

    printf("Program p ::= init ; %s \n", reg_grammar.c_str());
};

void langGenerator::saveLang(string gmrPath){
    set<ValidVariable *> lanVar = synLang.vars;
    set<Stmt *> lanStmt = synLang.stmts;
    set<GStmt *> lanGStmt = synLang.grammar_stmts;
    string reg_grammar = synLang.regexp;

    cout << "[+] Saving the grammar to " << gmrPath << endl;
    std::filesystem::path cwd = gmrPath;
    ofstream gmrTxt;
    gmrTxt.open(cwd);

    gmrTxt << "Variable var    \n\t";
    for (ValidVariable *it : lanVar)
    {
        if (it->getType() == datavariable)
            gmrTxt << it->getSource().c_str() << ", ";
    }
    gmrTxt << endl;
    gmrTxt << "Neat Variable var    \n\t";
    for (ValidVariable *it : lanVar)
    {
        if (it->getType() == datavariable){
            for(auto& [key, val] : origVarToVarMap){
                if (it->getSource() == val){
                    gmrTxt << it->getSource().c_str() << ", ";
                    break;
                }
                
            }
        }
            
    }
    gmrTxt << "Valid Statement VS ::= " << endl;
    for (Stmt *it : lanStmt)
    {
        string stmt_str;
        stmt_str = (use_src
                        ? it->alphabetID +": " + getSourceByLine(it->getLine(), it->getCol(), it->getContainingFilename())
                        : it->alphabetID +": " + it->code);
        gmrTxt << "| " << stmt_str.c_str() << " " << endl;
    }
    gmrTxt << endl;
    gmrTxt << "Program p ::= init ; " << reg_grammar.c_str() << endl;

    gmrTxt.close();
}

language langGenerator::getLang() const
{
    return synLang;
};

string getSimpleNodeLabel(const BasicBlock *Node)
{
    if (!Node->getName().empty())
        return Node->getName().str();
    string Str;
    raw_string_ostream OS(Str);
    Node->printAsOperand(OS, false);
    return OS.str();
}

bool langGenerator::addVarToGodSet(Value *val, VariableType tp)
{
    // add new Variable
    Instruction *inst = dyn_cast<Instruction>(val);
    if (inst == nullptr)
    {
        return false;
    }
    string name = getVarName(inst);
    int line = 0; // Todo: get line number
    ValidVariable *newVar = new ValidVariable(name, name, inst->getFunction()->getName().str(), line);
    Type *val_ptr_type = getValueType(val);
    newVar->setPtrOrVarType(val_ptr_type);
    newVar->setType(tp);
    godValidVars.insert(newVar);
    return true;
}

string getVarName(const Instruction *ins)
{
    if (!ins->getName().empty())
        return ins->getName().str();
    string Str;
    raw_string_ostream OS(Str);
    ins->printAsOperand(OS, false);
    string res = OS.str();
    if(res!="<badref>"){
        return res;
    }
    return "";
}

// string getGVName(const GlobalVariable *ins)
// {
//     if (!ins->getName().empty())
//         return ins->getName().str();
//     string Str;
//     raw_string_ostream OS(Str);
//     ins->printAsOperand(OS, false);
//     return OS.str();
// }

std::string getValueName(const Value *val)
{
    std::string res;
    if(val->hasName()){
        res = val->getName().str();
    }else{
        if(auto arg_inst = dyn_cast<ConstantInt>(val)){
            res = to_string(arg_inst->getSExtValue());
        }else if(auto arg_inst = dyn_cast<Instruction>(val)){
            res = getVarName(arg_inst);
        }else{
            // cout << "Cannot identify value" << endl;
            res="";
        }
    }
    return res;
}

set<Instruction *> unionSet(set<Instruction *> s1, set<Instruction *> s2)
{
    s1.insert(s2.cbegin(), s2.cend());
    return s1;
}

bool isBlackStmt(string code){
    vector<string> stmtBlackList;
    stmtBlackList.push_back("return");
    stmtBlackList.push_back("while");
    stmtBlackList.push_back("for (");
    stmtBlackList.push_back("for(");
    stmtBlackList.push_back("for");
    stmtBlackList.push_back("if");
    stmtBlackList.push_back("#define");
    bool black_stmt=false;
    for (auto s : stmtBlackList)
    {
        if (code.find(s) != std::string::npos){
            black_stmt=true;
            break;
        }
    }
    return black_stmt;
}