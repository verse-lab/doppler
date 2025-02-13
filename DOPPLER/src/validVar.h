#include <iostream>
#include <fstream>
#include <set>
#include "llvm/IR/Type.h"

using namespace std;
using namespace llvm;

enum VariableType
{
    datavariable,
    controlvariable
};

class ValidVariable
{
private:
    string symbol;   // variable name in llvm IR
    string source;   // variable name in the source code
    string function; // enclosing function in source code
    int line;
    VariableType type;
    llvm::Type* ptrOrVarType;
    int lb;
    int ub;

public:
    ValidVariable(string symbol, string source, string f, int line);
    void print() const;
    VariableType getType() const;
    void setType(VariableType ty);
    string getSymbol() const;
    string getSource() const;
    void setSymbol(string src);
    void setSource(string src);
    string getFunction() const;
    void setFunction(string f);
    llvm::Type* getPtrOrVarType() const;
    void setPtrOrVarType(llvm::Type *op_type);
};

set<uint64_t> readGadgetLinesFromJson(string inputFilePath);
set<ValidVariable*> readVarsFromJson(string inputFilePath);