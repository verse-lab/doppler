#pragma once

#include <vector>
#include <string>
#include <fstream>
#include <unordered_map>

#include "langGenerator.h"

using namespace std;

class langCompiler {

private:

    language lang;
    string mapPath;
    string compilerPath;
    unordered_map<string, vector< pair<string, vector<unsigned char> > > > payloadMap;
    string compilerTemplatePath = "../src/compilerTemplate.cpp";

public:
    langCompiler(language lang, std::string mapPath, std::string compilerPath);
    void generate();
    void save();

};