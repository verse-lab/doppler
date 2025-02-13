#include "langCompiler.h"


langCompiler::langCompiler(language lang, string mapPath, string compilerPath){
    this->lang = lang;
    this->mapPath = mapPath;
    this->compilerPath = compilerPath;

}

void langCompiler::generate(){
    // construct hashmap
    for(auto item : this->lang.grammar_stmts){
        string key = item->traceHash;
        vector< pair<string, vector<unsigned char> > > assignments = item->assignments;
        this->payloadMap[key]=assignments;
    }

    // ToFix: cannot read and write complex structure like payloadMap
    // // save the structure to a binary file
    // std::ofstream outFile(this->mapPath, std::ios::binary);
    // if (!outFile) {
    //     std::cerr << "Error: Could not open file for writing.\n";
    //     return;
    // }
    // unordered_map<string, vector< pair<string, vector<unsigned char> > > > tmp = payloadMap;
    // outFile.write((char*)&tmp, sizeof(tmp));
    // outFile.close();

    // save the structure to a text file
    string buffer = "";
    for (auto it = payloadMap.begin(); it!=payloadMap.end(); ++it)
    {
        string tmp= it->first;
        tmp += ",";
        for (auto assign : it->second){
            string var = assign.first;
            tmp = tmp + var + ":";
            stringstream value;
            for (auto ii : assign.second){
                value << "0x" 
                << std::hex << std::setw(2) << std::setfill('0') // Ensure 2 digits with leading zero
                << static_cast<unsigned int>(static_cast<unsigned char>(ii)) << " ";
            }
            tmp += value.str() + ";";
        }
        buffer = buffer + tmp + "\n";
    }
    ofstream outFile(this->mapPath);
    if (!outFile) {
        std::cerr << "Error: Could not open file for writing.\n";
        return;
    }
    outFile << buffer;
    outFile.close();

    return;
}

void langCompiler::save(){
    string CMD = "clang++-13 -o " + this->compilerPath + " " + this->compilerTemplatePath + " -I../include/";

    int result = std::system(CMD.c_str());

    if (result == 0) {
        std::cout << "[+] Compiler generated! Saving to " << this->compilerPath << "\n";
    } else {
        std::cerr << "Error: Compiler generation failed.\n";
    }

}