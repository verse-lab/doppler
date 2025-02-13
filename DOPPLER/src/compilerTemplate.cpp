#include <cstdio>
#include <iostream>
#include <unordered_map>
#include <cxxopts.hpp>
#include <filesystem>
#include <bits/stdc++.h> 
#include <typeinfo>
#include <unistd.h>
#include <limits.h>
#include <string>

using namespace std;

unordered_map<string, vector<string > > loadFromFile(){
    unordered_map<string, vector<string > > payloadMap;
    char path[1024];
    readlink( "/proc/self/exe", path, 1024);
    string path_str(path);
    size_t pos = path_str.find_last_of('/');
    string folder = "";
    if (pos != std::string::npos){
        folder = path_str.substr(0,pos);
    }
    string MAP_PATH =  folder + "/tracemap";
    cout << "Getting paylod map file " << MAP_PATH << endl;
    
    // ToFix: cannot read and write complex structure like payloadMap directly
    // std::ifstream inFile(MAP_PATH, std::ios::binary);
    // if (!inFile) {
    //     std::cerr << "Error: Could not find paylod map file.\n";
    //     exit(0);
    // }
    // // Read the structure from the file
    // inFile.read((char*)(&payloadMap), sizeof(payloadMap));
    // inFile.close();

    // for(auto it = payloadMap.begin();it!=payloadMap.end();++it){
    //     std::cout << it->first << endl;
    // }

    ifstream inFile(MAP_PATH);
    if(!inFile){
        std::cerr << "Error: Could not find paylod map file.\n";
        exit(0);
    }
    string line;
    while (getline(inFile,line))
    {
       stringstream lstream(line);
       string key="";
       vector<string > assigns;
       string seg;
       while (getline(lstream, seg, ','))
       {
            if(key==""){
                key = seg;
            }
            else{
                stringstream segstream(seg);
                string ass="";
                while (getline(segstream,ass,';'))
                {
                    assigns.push_back(ass);
                }
                
            }
            payloadMap[key]=assigns;
       }
       
    }
    inFile.close();

    return payloadMap;
}

string loadExploitFile(string exploitPath){
    string exploit = "";
    std::ifstream inputFile(exploitPath);

    if (!inputFile) {
        std::cerr << "Error: Could not open file " << exploitPath << "\n";
        exit(0);
    }

    string line;

    while (std::getline(inputFile, line)) {
        exploit += line ;  // Add the line with a newline at the end
    }
    inputFile.close();

    return exploit;
}

void parseExploitCode(string exploitCode){
    string trace = "";
    unordered_map<string, vector<string > >  payloadMap = loadFromFile();
    vector<string > init;
    bool valid = true;
    string initCode="";
    // do syntax checking
    // valid format init(XXX);vsXX;vsXX;
    cout << "Syntax Checking..." << endl;
    string seg;
    stringstream exploitCodeStream(exploitCode);
    regex vsReg("^(vs[0-9])|(vs[0-9]+)$");
    regex initReg("^init");
    while(std::getline(exploitCodeStream, seg, ';'))
    {
        if(regex_match(seg,vsReg)){
            trace += seg;
        }else if(regex_match(seg,initReg)){
            initCode = seg;
        }else{
            cout << "ERROR: Syntax Error "<< endl;
            valid=false;
        }
    }
    // TODO: parse init

    cout << "Getting Payload..." << endl;
    // get result
    if(valid){
        // cout << trace << endl;
        if(payloadMap.find(trace) != payloadMap.end()){
            vector<string > assign = payloadMap[trace];
            cout << "Payload: " << endl;
            for (auto item : assign){
                cout << item << endl;
            }
        }else{
            cout << "ERROR: Invalid Statements " << endl;
        }
    }else{
        cout << "ERROR: Syntax Error " << endl;
    }


}

int main(int argc, char *argv[], char** envp){

    time_t start, end;
    std::time(&start);
    cxxopts::Options options("test", "A brief description");

    options.add_options()
        ("e,exploit", "Path of exploit program", cxxopts::value<std::string>())
        ("s,strexploit", "Exploit program in a string", cxxopts::value<std::string>())
        ("h,help", "Print usage")
    ;

    auto result = options.parse(argc, argv);

    if (result.count("help"))
    {
      std::cout << options.help() << std::endl;
      exit(0);
    }
    std::string exploitString;
    std::string exploitPath;

    if (result.count("exploit")){
        exploitPath = result["exploit"].as<std::string>();
        exploitString=loadExploitFile(exploitPath);
    }
    else if(result.count("strexploit")){
      
      exploitString = result["strexploit"].as<std::string>();
    }else{
        std::cout << "Please indicate the file or text you want to compile. You can use --exploit=<your_path> or --strexploit=<your_code>." << std::endl;
        exit(0);
    }

    parseExploitCode(exploitString);
    return 0;
}