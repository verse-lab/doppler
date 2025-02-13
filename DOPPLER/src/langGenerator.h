#pragma once

#include <vector>
#include <string>
#include "aaInfo.h"

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DerivedUser.h"
#include "llvm/IR/Operator.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Constants.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Passes/PassBuilder.h"


using namespace std;
using namespace llvm;

using IStmt = vector<Stmt *>;

enum GStmtType{
    composable,
    repeatable,
    others // can only be used in fixed order
};

class GStmt{
    public:
    GStmtType type;
    vector<Stmt*> gstmt;
    int repeatN = 1;
    set<int> repeatNSet;
    string traceHash;
    vector< pair<string, vector<unsigned char> > > assignments;

    GStmt(){};
};

// inline bool operator<(const GStmt &a, const GStmt &b) {
//     string as = !a.gstmt.empty() ? a.gstmt.front()->code : "";
//     string bs = !b.gstmt.empty() ? b.gstmt.front()->code : "";
//     return a.gstmt.size() < b.gstmt.size() ||
//         a.repeatN < b.repeatN ||
//         std::hash<std::string>{}(as) < std::hash<std::string>{}(bs);
// }

struct language{
    set<Stmt *> stmts;  // valid statements
    set<GStmt *> grammar_stmts;   // statements
    set<ValidVariable*> vars;   // valid variables
    string regexp;
};

class langGenerator {
private:
    string filePath;
    set<uint64_t> gadgetLines;
    set<ValidVariable*> godValidVars;  
    set<ValidVariable*> entryValidVars; // used to save the original attack variables
    set<Instruction*> srcValidVars;
    language synLang;
    map<string, aaInfo*> analysisMap;
    // debug
    map<Value*, DbgDeclareInst*> addressToDebugMap;
    map<pair<string, string>, string> origVarToVarMap;
    string entryFunction="main";
    // map from file to lines
    map<string, vector<string>> srcLines;
    void readFile(const string& filename);
    vector<PathConstraint> paths;
    bool use_src = false;
    bool use_lstar = false;
    bool skip_reg = false;
    string dfa_path;
    VariableType aaMode = controlvariable; // strong (controlvariable) or weak (datavariable) analysis mode
    FunctionAnalysisManager FAM;
    PassBuilder PB;

    string getSourceByLine(unsigned Line, unsigned Col, const string& fileName);
    
public:
    langGenerator(string filePath, string entryFunction, string varsJsonFile, string entryvarsJsonFile,
                  string src, vector<PathConstraint> paths, bool use_src, bool use_lstar, string dfaPath, bool skip_reg);
    void printLang();
    void saveLang(string gmrPath);
    void printAnnotation(map<string, aaInfo *> *analysisMap);
    language getLang() const;
    void globalInitialization();
    void generate();
    BasicBlock* findEntryByKLEE();
    void updateStmtCode(Stmt* it);

    set<Instruction*> genAndGetSrcInst(Function* F, BasicBlock *entryBB);
    VariableType propagateTypeInst(Instruction *I, aaInfo* currentInfo, DependenceInfo DA);
    bool addVarToGodSet(Value *val, VariableType typ);
    bool isSrcDepend(Instruction *inst, DependenceInfo DA);
    bool isSrcInst(Instruction *inst);
    void updateVariableTypes(BasicBlock* BB, aaInfo* currentInfo, aaInfo* entryInfo);
    void updateVariableTypesDependence(Function* F, BasicBlock *entryBB, map<string, aaInfo*> analysisMap, DependenceInfo DA);
    void updateValidStatements(BasicBlock* BB, aaInfo* currentInfo);
    void updateValidStatementsDependence(Function* F,  BasicBlock *entryBB, map<string, aaInfo*> analysisMap, DependenceInfo DA);

};

bool checkEqual(aaInfo* currentInfo, aaInfo* nextInfo);
void readSourceFile(std::string sourcePath);
std::string getSimpleNodeLabel(const BasicBlock *Node);
std::string getVarName(const Instruction *ins);
std::string getValueName(const Value *val);
set<Instruction *> unionSet(set<Instruction *> s1, set<Instruction *> s2);
bool checkContinuty(set<int> times);
int checkRepetitionTimes(Stmt* target, vector<Stmt *> oneStmtPath);
bool isSrcVariableByInst(set<ValidVariable*> srcSet, const Instruction *ins);
bool isSrcVariableByName(set<ValidVariable*> srcSet, string name);
bool isBlackStmt(string code);
void combineInfo(aaInfo* currentInfo,aaInfo* nextInfo, string func_name);
