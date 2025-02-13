#pragma once

#include <set>
#include "validStmt.h"

using namespace std;

class aaInfo{
    public:
        set<ValidVariable*> block_vars;
        vector<Stmt *> valid_stmt;
        set<uint64_t> gadget_lines;

        // aaInfo(set<ValidVariable*> c_vars, set<ValidVariable*> d_vars, set<Stmt *> v_stmt);
        aaInfo(set<ValidVariable*> block_vars, vector<Stmt *> v_stmt);
        set<ValidVariable*> getDataVariables();
        set<ValidVariable*> getControlVariables();
        bool setVariableType(string symbol, VariableType ty);
        bool setToDataVariable(string symbol);
        bool setToControlVariable(string symbol);

        VariableType getVarType(string v1);
        void addVariable(ValidVariable *new_var);
        void removeVariable(string v_name);
        void unionVariableSet(set<ValidVariable*> s2, VariableType ty);
        bool isValidVar(string v1);
        ValidVariable* getValidVar(string v1);
        void addValidStmt(Stmt* new_s);
};