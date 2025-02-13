#pragma once

// Taken from klee.cpp
#include "KleeHandler.h"
#include <thread>
#include <utility>

struct KleeConfig {
    std::string LibraryPath = std::string(KLEE_DIR) + "/runtime/lib";
    // is set to true, set the entry point to __user_main in langGenerator.cpp
    bool useUclibc = false;
    std::string InputFile;
    std::string EntryPoint = "main";
    std::string RuntimeBuild = RUNTIME_CONFIGURATION;
    char** Env;

    int TimeoutLimit = 100;

    bool OptimizeModule = true;
    bool CheckDivZero = true;
    bool CheckOvershift = false;
};

static Interpreter *theInterpreter = nullptr;

static Function *mainFn = nullptr;
static Function *entryFn = nullptr;

static bool interrupted = false;

// Pulled out so it can be easily called from a debugger.
extern "C"
void halt_execution() {
    theInterpreter->setHaltExecution(true);
}

extern "C"
void stop_forking() {
    theInterpreter->setInhibitForking(true);
}

static void interrupt_handle() {
    if (!interrupted && theInterpreter) {
        llvm::errs() << "KLEE: ctrl-c detected, requesting interpreter to halt.\n";
        halt_execution();
        sys::SetInterruptFunction(interrupt_handle);
    } else {
        llvm::errs() << "KLEE: ctrl-c detected, exiting.\n";
        exit(1);
    }
    interrupted = true;
}

static void interrupt_handle_watchdog() {
    // just wait for the child to finish
}

// This is a temporary hack. If the running process has access to
// externals then it can disable interrupts, which screws up the
// normal "nice" watchdog termination process. We try to request the
// interpreter to halt using this mechanism as a last resort to save
// the state data before going ahead and killing it.
static void halt_via_gdb(int pid) {
    char buffer[256];
    snprintf(buffer, sizeof(buffer),
             "gdb --batch --eval-command=\"p halt_execution()\" "
             "--eval-command=detach --pid=%d &> /dev/null",
             pid);
    if (system(buffer)==-1)
        perror("system");
}

static void replaceOrRenameFunction(llvm::Module *module,
                                    const char *old_name, const char *new_name)
{
    Function *new_function, *old_function;
    new_function = module->getFunction(new_name);
    old_function = module->getFunction(old_name);
    if (old_function) {
        if (new_function) {
            old_function->replaceAllUsesWith(new_function);
            old_function->eraseFromParent();
        } else {
            old_function->setName(new_name);
            assert(old_function->getName() == new_name);
        }
    }
}

static void
createLibCWrapper(std::vector<std::unique_ptr<llvm::Module>> &modules,
                  llvm::StringRef intendedFunction,
                  llvm::StringRef libcMainFunction) {
    // We now need to swap things so that libcMainFunction is the entry
    // point, in such a way that the arguments are passed to
    // libcMainFunction correctly. We do this by renaming the user main
    // and generating a stub function to call intendedFunction. There is
    // also an implicit cooperation in that runFunctionAsMain sets up
    // the environment arguments to what a libc expects (following
    // argv), since it does not explicitly take an envp argument.
    auto &ctx = modules[0]->getContext();
    Function *userMainFn = modules[0]->getFunction(intendedFunction);
    assert(userMainFn && "unable to get user main");
    // Rename entry point using a prefix
    userMainFn->setName("__user_" + intendedFunction);

    // force import of libcMainFunction
    llvm::Function *libcMainFn = nullptr;
    for (auto &module : modules) {
        if ((libcMainFn = module->getFunction(libcMainFunction)))
            break;
    }
    if (!libcMainFn)
        klee_error("Could not add %s wrapper", libcMainFunction.str().c_str());

    auto inModuleReference = libcMainFn->getParent()->getOrInsertFunction(
            userMainFn->getName(), userMainFn->getFunctionType());

    const auto ft = libcMainFn->getFunctionType();

    if (ft->getNumParams() != 7)
        klee_error("Imported %s wrapper does not have the correct "
                   "number of arguments",
                   libcMainFunction.str().c_str());

    std::vector<Type *> fArgs;
    fArgs.push_back(ft->getParamType(1)); // argc
    fArgs.push_back(ft->getParamType(2)); // argv
    Function *stub =
            Function::Create(FunctionType::get(Type::getInt32Ty(ctx), fArgs, false),
                             GlobalVariable::ExternalLinkage, intendedFunction,
                             libcMainFn->getParent());
    BasicBlock *bb = BasicBlock::Create(ctx, "entry", stub);
    llvm::IRBuilder<> Builder(bb);

    std::vector<llvm::Value *> args;
    args.push_back(llvm::ConstantExpr::getBitCast(
            cast<llvm::Constant>(inModuleReference.getCallee()),
            ft->getParamType(0)));
    args.push_back(&*(stub->arg_begin())); // argc
    auto arg_it = stub->arg_begin();
    args.push_back(&*(++arg_it));                                // argv
    args.push_back(Constant::getNullValue(ft->getParamType(3))); // app_init
    args.push_back(Constant::getNullValue(ft->getParamType(4))); // app_fini
    args.push_back(Constant::getNullValue(ft->getParamType(5))); // rtld_fini
    args.push_back(Constant::getNullValue(ft->getParamType(6))); // stack_end
    Builder.CreateCall(libcMainFn, args);
    Builder.CreateUnreachable();
}

static void
linkWithUclibc(StringRef libDir, std::string opt_suffix,
               std::vector<std::unique_ptr<llvm::Module>> &modules) {
    LLVMContext &ctx = modules[0]->getContext();

    size_t newModules = modules.size();

    // Ensure that klee-uclibc exists
    SmallString<128> uclibcBCA(libDir);
    std::string errorMsg;
    llvm::sys::path::append(uclibcBCA, KLEE_UCLIBC_BCA_NAME);
    if (!klee::loadFile(uclibcBCA.c_str(), ctx, modules, errorMsg))
        klee_error("Cannot find klee-uclibc '%s': %s", uclibcBCA.c_str(),
                   errorMsg.c_str());

    for (auto i = newModules, j = modules.size(); i < j; ++i) {
        replaceOrRenameFunction(modules[i].get(), "__libc_open", "open");
        replaceOrRenameFunction(modules[i].get(), "__libc_fcntl", "fcntl");
    }

    if (mainFn)
        createLibCWrapper(modules, "main", "__uClibc_main");
    klee_message("NOTE: Using klee-uclibc : %s", uclibcBCA.c_str());

    // Link the fortified library
    SmallString<128> FortifyPath(libDir);
    llvm::sys::path::append(FortifyPath,
                            "libkleeRuntimeFortify" + opt_suffix + ".bca");
    if (!klee::loadFile(FortifyPath.c_str(), ctx, modules, errorMsg))
        klee_error("error loading the fortify library '%s': %s",
                   FortifyPath.c_str(), errorMsg.c_str());
}

class KleeRunner {
    KleeConfig config;

public:
    explicit KleeRunner(KleeConfig c) : config(std::move(c)) {}
    vector<PathConstraint> paths;
    bool analysisDone = false;

    int run() {
        // sys::SetInterruptFunction(interrupt_handle);

        // Load the bytecode...
        std::string errorMsg;
        LLVMContext ctx;

        std::vector<std::unique_ptr<llvm::Module>> loadedModules;
        if (!klee::loadFile(config.InputFile, ctx, loadedModules, errorMsg)) {
            klee_error("error loading program '%s': %s", config.InputFile.c_str(),
                       errorMsg.c_str());
        }
        // Load and link the whole files content. The assumption is that this is the
        // application under test.
        // Nothing gets removed in the first place.
        std::unique_ptr<llvm::Module> M(klee::linkModules(
                loadedModules, "" /* link all modules together */, errorMsg));
        if (!M) {
            klee_error("error loading program '%s': %s", config.InputFile.c_str(),
                       errorMsg.c_str());
        }

        llvm::Module *mainModule = M.get();

        const std::string &module_triple = mainModule->getTargetTriple();
        std::string host_triple = llvm::sys::getDefaultTargetTriple();

        if (module_triple != host_triple)
            klee_warning("Module and host target triples do not match: '%s' != '%s'\n"
                         "This may cause unexpected crashes or assertion violations.",
                         module_triple.c_str(), host_triple.c_str());

        // Detect architecture
        std::string opt_suffix = "64"; // Fall back to 64bit
        if (module_triple.find("i686") != std::string::npos ||
            module_triple.find("i586") != std::string::npos ||
            module_triple.find("i486") != std::string::npos ||
            module_triple.find("i386") != std::string::npos)
            opt_suffix = "32";

        // Add additional user-selected suffix
        opt_suffix += "_" + config.RuntimeBuild;

        // Push the module as the first entry
        loadedModules.emplace_back(std::move(M));

        std::string LibraryDir = KleeHandler::getRunTimeLibraryPath(config.LibraryPath.c_str());
        Interpreter::ModuleOptions Opts(LibraryDir.c_str(), config.EntryPoint, opt_suffix,
                /*Optimize=*/config.OptimizeModule,
                /*CheckDivZero=*/config.CheckDivZero,
                /*CheckOvershift=*/config.CheckOvershift);

        // Get the main function
        for (auto &module : loadedModules) {
            mainFn = module->getFunction("main");
            if (mainFn)
                break;
        }

        // Get the entry point function
        if (config.EntryPoint.empty())
            klee_error("entry-point cannot be empty");

        for (auto &module : loadedModules) {
            entryFn = module->getFunction(config.EntryPoint);
            if (entryFn)
                break;
        }

        if (!entryFn)
            klee_error("Entry function '%s' not found in module.", config.EntryPoint.c_str());

        if (config.useUclibc) {
            linkWithUclibc(LibraryDir, opt_suffix, loadedModules);
        } else {
            SmallString<128> Path(Opts.LibraryDir);
            llvm::sys::path::append(Path,
                                    "libkleeRuntimeFreestanding" + opt_suffix + ".bca");
            if (!klee::loadFile(Path.c_str(), mainModule->getContext(), loadedModules,
                                errorMsg))
                klee_error("error loading freestanding support '%s': %s", Path.c_str(),
                           errorMsg.c_str());
        }

        // FIXME: Change me to std types.
        int pArgc;
        char **pArgv;
        char **pEnvp = config.Env;

        std::vector<std::string> InputArgv{ config.LibraryPath, config.InputFile };

        pArgc = InputArgv.size() + 1;
        pArgv = new char *[pArgc];
        for (unsigned i=0; i<InputArgv.size()+1; i++) {
            std::string &arg = (i==0 ? config.InputFile : InputArgv[i-1]);
            unsigned size = arg.size() + 1;
            char *pArg = new char[size];

            std::copy(arg.begin(), arg.end(), pArg);
            pArg[size - 1] = 0;

            pArgv[i] = pArg;
        }

        Interpreter::InterpreterOptions IOpts;
        IOpts.MakeConcreteSymbolic = 0;
        KleeHandler *handler = new KleeHandler(pArgc, pArgv, config.InputFile);
        Interpreter *interpreter =
                theInterpreter = Interpreter::create(ctx, IOpts, handler);
        assert(interpreter);
        handler->setInterpreter(interpreter);

        // watchdog hack
        std::thread([this, interpreter]() {
            std::this_thread::sleep_for(std::chrono::seconds(config.TimeoutLimit));
            if (!analysisDone && interpreter) {
                std::cout << "Timeout hit! Attempting abort of klee analyzer..." << std::endl;
                interpreter->setHaltExecution(true);
            }
        }).detach();

        // Get the desired main function.  klee_main initializes uClibc
        // locale and other data and then calls main.

        auto finalModule = interpreter->setModule(loadedModules, Opts);
        entryFn = finalModule->getFunction(config.EntryPoint);
        if (!entryFn)
            klee_error("Entry function '%s' not found in module.", config.EntryPoint.c_str());

        // externalsAndGlobalsCheck(finalModule);

        std::vector<bool> replayPath;
        // auto startTime = std::time(nullptr);
        interpreter->runFunctionAsMain(entryFn, pArgc, pArgv, pEnvp);
        // auto endTime = std::time(nullptr);
        paths = handler->pathConstraints;
        analysisDone = true;

        // Free all the args.
        for (unsigned i=0; i<InputArgv.size()+1; i++)
            delete[] pArgv[i];
        delete[] pArgv;

        delete interpreter;
        delete handler;

        return 0;
    }
};
