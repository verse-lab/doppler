#include "validStmt.h"

Stmt::Stmt(string source_code){
    code=source_code;
    repeatableTimes=1;

}
bool Stmt::checkSat() const{
    return false;
}
void Stmt::checkRepeatTimes(){
    return;
}

string Stmt::getSourceStr(){
    return code;
}

void Stmt::setSourceLine(unsigned l){
    lineInSourceCode=l;
}

void Stmt::setSourceCol(unsigned l){
    colInSourceCode=l;
}

unsigned Stmt::getLine(){
    return lineInSourceCode;
}

unsigned Stmt::getCol(){
    return colInSourceCode;
}

void Stmt::setContainingFilename(const string &filename) {
    fileName = filename;
}

string Stmt::getContainingFilename() const {
    return fileName;
}
