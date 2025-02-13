#include <cstdio>
#include <iostream>
// #include <fstream>
// #include <sstream>
#include <set>
#include <map>
#include <vector>
#include <stack>
#include <cxxopts.hpp>
#include <bits/stdc++.h> 

#include "langGenerator.h"
#include "langCompiler.h"
#include "KleeRunner.h"

std::string DEFAULT_FOLDER = "doppler-run/";
std::string KLEE_LL_PATH = "doppler-run/assembly.ll";
std::string DEFAULT_COMPILER_NAME= "compiler.doppler";
std::string DEFAULT_DFA_NAME = "dfa.txt";
std::string DEFAULT_GRAMMAR_NAME = "grammar.txt";

int main(int argc, char *argv[], char** envp){

    time_t start, end;
    std::time(&start);
    cxxopts::Options options("test", "A brief description");

    options.add_options()
        ("f,file", "Path of target file", cxxopts::value<std::string>())
        ("s,src", "Path of source file", cxxopts::value<std::string>())
        ("e,entry", "Function name of entry point", cxxopts::value<std::string>())
        ("d,debug", "Enable debugging", cxxopts::value<bool>()->default_value("false"))
        ("v,vars", "Path of valid variable file", cxxopts::value<std::string>())
        ("g,gadgets", "Path of gadget lines file", cxxopts::value<std::string>())
        ("c,compiler", "Name of exploit compiler file", cxxopts::value<std::string>()->default_value(DEFAULT_COMPILER_NAME))
        ("us, use_src", "Use source file", cxxopts::value<bool>()->default_value("false"))
        ("l,lstar", "Use lstar strategy instead of passive learning", cxxopts::value<bool>()->default_value("false"))
        ("t,timeout", "Timeout limit", cxxopts::value<int>()->default_value("3600"))
        ("a,dfa", "Name of DFA file", cxxopts::value<std::string>()->default_value(DEFAULT_DFA_NAME))
        ("o,output_path", "Folder to store output files", cxxopts::value<std::string>()->default_value(DEFAULT_FOLDER))
        ("k,skip_reg", "Skip the process of converting DFA to RegExp", cxxopts::value<bool>()->default_value("false"))
        ("h,help", "Print usage")
    ;

    auto result = options.parse(argc, argv);

    if (result.count("help"))
    {
      std::cout << options.help() << std::endl;
      exit(0);
    }

    // some arguments
    // bool debug = result["debug"].as<bool>();
    // int foo = result["foo"].as<int>();

    std::string file;
    if (result.count("file"))
      file = result["file"].as<std::string>();
    else {
      std::cout << "Please indicate the file you want to analyze. You can use --file=<your_path>." << std::endl;
      exit(0);
    }
    std::string entry;
    if (result.count("entry"))
      entry = result["entry"].as<std::string>();
    else {
      std::cout << "Please indicate the entry of the vulnerability. You can use --entry=<function_name>." << std::endl;
      exit(0);
    }
    string jsonFile;
    if (result.count("vars"))
      jsonFile = result["vars"].as<std::string>();
    else {
      std::cout << "Please indicate the valid variables of the vulnerability. You can use --vars=<your_path>." << std::endl;
      exit(0);
    }
    string gadgetsFile = "";
    if (result.count("gadgets")) {
      gadgetsFile = result["gadgets"].as<std::string>();
    }
    std::string src;
    if (result.count("src"))
        src = result["src"].as<std::string>();
    else {
        std::cout << "Please indicate the source file. You can use --src=<your_path>." << std::endl;
        exit(0);
    }
    std::string outputFolder = result["output_path"].as<std::string>();
    if (outputFolder.back()!='/'){
      outputFolder += '/';
    }
    if (outputFolder!= DEFAULT_FOLDER){
      if(mkdir(outputFolder.c_str(), 0775) < 0){
      // cannot create, folder exists, it is okay
        if(errno!=EEXIST){
          cout << "Error: Cannot create the folder " << outputFolder << endl;
          exit(0);
        }else{
          cout << "[+] Check output folder " << outputFolder << endl;
        }
      }else{
        cout << "[+] Created output folder " << outputFolder << endl;
      }
    }

    std::string compilerPath = outputFolder + result["compiler"].as<std::string>();
    bool us = result["use_src"].as<bool>();
    bool lstar = result["lstar"].as<bool>();
    bool skip_reg = result["skip_reg"].as<bool>();
    int timeout = result["timeout"].as<int>();
    std::string dfaPath = outputFolder + result["dfa"].as<std::string>();
    std::string mapPath = outputFolder + "tracemap";
    std::string gmrPath = outputFolder + DEFAULT_GRAMMAR_NAME;

    // start the analysis

    atexit(llvm_shutdown);
    llvm::InitializeNativeTarget();

    KleeConfig config;
    config.LibraryPath = argv[0];
    config.InputFile = file;
    config.Env = envp;
    config.TimeoutLimit = timeout;
    config.EntryPoint = entry;

    KleeRunner klee(config);
    klee.run();
    vector<PathConstraint> paths = klee.paths;

  //  for (const auto& path : paths) {
  //      std::cout << "Path:" << std::endl;
  //      klee::ConstraintSet constraints = path.constraints;
  //      klee::Query con_query = Query(constraints);
  //  }

    cout << "[+] ANALYSIS STARTS" << endl;
    auto *lang = new langGenerator(KLEE_LL_PATH,entry,jsonFile,gadgetsFile,src,paths,us, lstar, dfaPath, skip_reg);
    // lang->globalInitialization();
    lang->generate();
    lang->printLang();
    lang->saveLang(gmrPath);

    // generate compiler for the language
    cout << "[+] Generate compiler..." << endl;
    language exploit_lanague = lang->getLang();
    langCompiler *compiler = new langCompiler(exploit_lanague, mapPath, compilerPath);
    compiler->generate();
    compiler->save();

    std::time(&end);
    double time_taken = double(end-start);
    cout << "[+] ANALYSIS ENDS, TOTAL TIME: " << fixed << time_taken << setprecision(5);
    cout << " sec " << endl;
    
    return 0;
}
