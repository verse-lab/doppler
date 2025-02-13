#include "validVar.h"
#include <cstdlib>
#include "rapidjson/document.h"
#include "rapidjson/istreamwrapper.h"
using namespace rapidjson;

ValidVariable::ValidVariable(string sym, string src, string f, int ln) :
                             symbol(sym), source(src), function(f), line(ln), type(datavariable) {}

void ValidVariable::print() const {

};
VariableType ValidVariable::getType() const
{
    return type;
};

void ValidVariable::setType(VariableType ty)
{
    type = ty;
};

string ValidVariable::getSymbol() const{
    return symbol;
};

string ValidVariable::getSource() const{
    return source;
};

string ValidVariable::getFunction() const {
    return function;
}

void ValidVariable::setSource(string src){
    source = src;
};

void ValidVariable::setSymbol(string src){
    symbol = src;
};

void ValidVariable::setFunction(string f){
    function = f;
};

llvm::Type* ValidVariable::getPtrOrVarType() const{
    return ptrOrVarType;
};

void ValidVariable::setPtrOrVarType(llvm::Type *op_type){
    ptrOrVarType = op_type;
};

set<uint64_t> readGadgetLinesFromJson(string inputFilePath)
{
    set<uint64_t> res;
    cout << inputFilePath <<endl;
    ifstream jVar(inputFilePath);
    if ( !jVar.is_open() )
    {
        std::cerr << "Could not open file for reading!\n";
        exit(1);
    }

    IStreamWrapper isw { jVar };

    // Create a Document object
    // to hold the JSON data
    Document varDataDoc;

    // Parse the JSON data
    varDataDoc.ParseStream(isw);
    // cout << json <<endl;
    assert(varDataDoc.IsArray());
    for (SizeType i = 0; i < varDataDoc.Size(); i++)
    {
        uint64_t line = varDataDoc[i].GetUint64();
        res.insert(line);
    }
    cout<<"Finish gadget line reading..."<<endl;

    jVar.close();
    return res;
};

set<ValidVariable*> readVarsFromJson(string inputFilePath)
{
    set<ValidVariable*> res;
    cout << inputFilePath <<endl;
    ifstream jVar(inputFilePath);
    if ( !jVar.is_open() )
    {
        std::cerr << "Could not open file for reading!\n";
        exit(1);
    }

    IStreamWrapper isw { jVar };

    // Create a Document object
    // to hold the JSON data
    Document varDataDoc;

    // Parse the JSON data
    varDataDoc.ParseStream(isw);
    // cout << json <<endl;
    assert(varDataDoc.IsArray());
    for (SizeType i = 0; i < varDataDoc.Size(); i++)
    {
        int line = varDataDoc[i]["location"]["startLine"].GetInt();
        string symbol = varDataDoc[i]["symbol"].GetString();
        string source = varDataDoc[i]["source"].GetString();
        string function = varDataDoc[i]["function"].GetString();
        ValidVariable *tmp = new ValidVariable(symbol, source, function, line);
        res.insert(tmp);
    }
    cout<<"[-] By default, all variables are data variables"<<endl;
    cout<<"[+] Finish variable reading..."<<endl;

    jVar.close();
    return res;
};
