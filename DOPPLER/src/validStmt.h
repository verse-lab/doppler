#pragma once

#include <iostream>
#include <fstream>
#include <vector>
#include "validVar.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
// #include "c++/z3++.h"

using namespace std;
// using namespace z3;
using namespace llvm;

#include "KleeHandler.h"

enum StmtType
{
    oneline,
    compositional
};

class Stmt
{
public:
    string code;
    string sourceCode;
    string alphabetID;
    set<ValidVariable*> usedValidVar;
    vector<Instruction*> InstSet;
    // int numDataVar;
    // int numCtlVar;
    int repeatableTimes;
    unsigned lineInSourceCode;
    unsigned colInSourceCode;
    string fileName;

    // expr pathCondition;
    PathConstraint pathCondition;
    string name;
    string startBB;
    string endBB;

    Stmt(string s);
    bool checkSat() const;
    void checkRepeatTimes();
    string getSourceStr();
    void setSourceLine(unsigned l);
    void setSourceCol(unsigned l);
    void setContainingFilename(const string& filename);
    unsigned getLine();
    unsigned getCol();
    string getContainingFilename() const;
};
