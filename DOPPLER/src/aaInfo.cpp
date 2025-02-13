#include "aaInfo.h"

aaInfo::aaInfo(set<ValidVariable*> b_vars, vector<Stmt *> v_stmt){
    block_vars = b_vars;
    valid_stmt = v_stmt;
}

set<ValidVariable*> aaInfo::getControlVariables(){
    set<ValidVariable*> res_set;
    for(auto it : block_vars){
        if(it->getType()==controlvariable){
            res_set.insert(it);
        }
    }
    return res_set;
}

set<ValidVariable*> aaInfo::getDataVariables(){
    set<ValidVariable*> res_set;
    for(auto it : block_vars){
        if(it->getType()==datavariable){
            res_set.insert(it);
        }
    }
    return res_set;
}

bool aaInfo::setToDataVariable(string symbol){
    bool found=false;
    for(auto it : block_vars){
        if(it->getSource()==symbol){
            found=true;
            it->setType(datavariable);
            break;
        }
    }
    return found;
}

bool aaInfo::setVariableType(string symbol, VariableType ty){
    bool found=false;
    for(auto it : block_vars){
        if(it->getSource()==symbol){
            found=true;
            it->setType(ty);
            break;
        }
    }
    return found;
}

bool aaInfo::setToControlVariable(string symbol){
    bool found=false;
    for(auto it : block_vars){
        if(it->getSource()==symbol){
            found=true;
            it->setType(controlvariable);
            break;
        }
    }
    return found;
}

void aaInfo::addVariable(ValidVariable *new_var){
    block_vars.insert(new_var);
}

void aaInfo::addValidStmt(Stmt* new_s){
    valid_stmt.push_back(new_s);
}
void aaInfo::removeVariable(string v_name){
    for(auto it = block_vars.cbegin(); it!=block_vars.cend(); ++it ){
        if ((*it)->getSource() == v_name)
        {
            // cout << "aaInfo:: remove symbol " << (*it)->getSource() << endl;
            delete *it;
            block_vars.erase(it);
            break;
        }
    }
}

void aaInfo::unionVariableSet(set<ValidVariable*> s2, VariableType ty){
    // union two sets
    // cout << "before the test" << endl;
    // for (auto v : block_vars){
    //     cout << "current " << v << " : " << v->getSource() << " " << v->getType() << endl;
    // }
    // for (auto v : s2){
    //     cout << "entry " << v << " : " << v->getSource() << " " << v->getType() << endl;
    // }
    // cout << "union variable set" << endl;

    set<ValidVariable*> cp_s2;
    for (auto* varPtr : s2) {
        cp_s2.insert(new ValidVariable(*varPtr));
    }
    block_vars.insert(cp_s2.cbegin(), cp_s2.cend());

    // remove duplicates
    set<ValidVariable*> res_set;
    for(auto v1 : block_vars){
        bool flag = true;
        for(auto v2 : res_set){
            if(v1->getSource()==v2->getSource()){
                // found the same variable
                // incline to type ty if conflicts
                if(v1->getType()!=v2->getType()){
                    v2->setType(ty);
                }
                flag = false;
                break;
            }
        }
        if(flag){
            // no duplicate, add to res_set
            res_set.insert(v1);
        }
    }
    block_vars = res_set;

    for (auto v : block_vars){
        cout << "new " << v << " : " << v->getSource() << " " << v->getType() << endl;
    }

    
}

bool aaInfo::isValidVar(string v1_name){

    if(v1_name==""){
        // cout << "aaInfo::isValidVars: empty variable name" << endl;
        return false;
    }
    for (ValidVariable *it : block_vars)
    {

        if (it->getSource() == v1_name)
        {
            // cout << "find symbol" << it->getSource() << " as a valid variable"<< endl;
            return true;
        }
    }
    // cout << "cannot find symbol " << v1_name << endl;
    return false;
}

ValidVariable* aaInfo::getValidVar(string v1_name){
    for (ValidVariable *it : block_vars)
    {

        if (it->getSource() == v1_name)
        {
            return it;
        }
    }
    return NULL;
}

VariableType aaInfo::getVarType(string v1){
    VariableType res=datavariable;

    for (ValidVariable *it : block_vars)
    {
        if (it->getSource() == v1)
        {
            res = it->getType();
            break;
        }
    }
    return res;
}