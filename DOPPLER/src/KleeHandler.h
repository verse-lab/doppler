#pragma once

// Taken from klee.cpp

#include "klee/ADT/KTest.h"
#include "klee/ADT/TreeStream.h"
#include "klee/Config/Version.h"
#include "klee/Core/Interpreter.h"
#include "klee/Expr/Expr.h"
#include "klee/Solver/SolverCmdLine.h"
#include "klee/Statistics/Statistics.h"
#include "klee/Support/Debug.h"
#include "klee/Support/ErrorHandling.h"
#include "klee/Support/FileHandling.h"
#include "klee/Support/ModuleUtil.h"
#include "klee/Support/OptionCategories.h"
#include "klee/Support/PrintVersion.h"
#include "klee/System/Time.h"
#include "klee/Expr/Constraints.h"
#include "klee/Expr/ExprPPrinter.h"

#include "klee/Support/CompilerWarning.h"
DISABLE_WARNING_PUSH
        DISABLE_WARNING_DEPRECATED_DECLARATIONS
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Errno.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Host.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Support/Signals.h"
#include "llvm/Support/TargetSelect.h"
DISABLE_WARNING_POP

#include <dirent.h>
#include <signal.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>

#include <cerrno>
#include <ctime>
#include <fstream>
#include <iomanip>
#include <iterator>
#include <sstream>

using namespace llvm;
using namespace klee;

// CLI constants
inline std::string OutputDir = "doppler-run";

namespace klee {
    extern cl::opt<std::string> MaxTime;
    class ExecutionState {
    public:
        ConstraintSet getConstraints() const;
        TreeOStream getPathStream() const;
        TreeOStream getSymPathStream() const;
    };
}

struct PathConstraint {
    ConstraintSet constraints;
    std::vector< std::pair<std::string, std::vector<unsigned char> > > assignments;
    std::vector<bool> path;
};

class KleeHandler : public InterpreterHandler {
private:
    Interpreter *m_interpreter;
    TreeStreamWriter *m_pathWriter, *m_symPathWriter;
    std::unique_ptr<llvm::raw_ostream> m_infoFile;
    ConstraintSet constraints;
    intmax_t MAX_PATHS = 100;

    SmallString<128> m_outputDirectory;

    unsigned m_numTotalTests;     // Number of tests received from the interpreter
    unsigned m_numGeneratedTests; // Number of tests successfully generated
    unsigned m_pathsCompleted; // number of completed paths
    unsigned m_pathsExplored; // number of partially explored and completed paths

    // used for writing .ktest files
    int m_argc;
    char **m_argv;

public:
    KleeHandler(int argc, char **argv, std::string InputFile);
    ~KleeHandler();

    vector<PathConstraint> pathConstraints;

    llvm::raw_ostream &getInfoStream() const { return *m_infoFile; }
    /// Returns the number of test cases successfully generated so far
    unsigned getNumTestCases() { return m_numGeneratedTests; }
    unsigned getNumPathsCompleted() { return m_pathsCompleted; }
    unsigned getNumPathsExplored() { return m_pathsExplored; }
    void incPathsCompleted() { ++m_pathsCompleted; }
    void incPathsExplored(std::uint32_t num = 1) {
        m_pathsExplored += num; }

    void setInterpreter(Interpreter *i);

    std::string getOutputFilename(const std::string &filename);
    std::unique_ptr<llvm::raw_fd_ostream> openOutputFile(const std::string &filename);
    std::unique_ptr<llvm::raw_fd_ostream> openTestFile(const std::string &suffix, unsigned id);

    void processTestCase(const ExecutionState &state,
                         const char *errorMessage,
                         const char *errorSuffix);

    // load a .path file
    static void loadPathFile(std::string name,
                             std::vector<bool> &buffer);

    static void getKTestFilesInDir(std::string directoryPath,
                                   std::vector<std::string> &results);

    static std::string getRunTimeLibraryPath(const char *argv0);
};

inline KleeHandler::KleeHandler(int argc, char **argv, std::string InputFile)
        : m_interpreter(0), m_pathWriter(0), m_symPathWriter(0),
          m_outputDirectory(), m_numTotalTests(0), m_numGeneratedTests(0),
          m_pathsCompleted(0), m_pathsExplored(0), m_argc(argc), m_argv(argv) {

    // create output directory (OutputDir or "klee-out-<i>")
    bool dir_given = OutputDir != "";
    SmallString<128> directory(dir_given ? OutputDir : InputFile);

    if (!dir_given) sys::path::remove_filename(directory);
    if (auto ec = sys::fs::make_absolute(directory)) {
        klee_error("unable to determine absolute path: %s", ec.message().c_str());
    }

    if (dir_given) {
        // OutputDir
        if (mkdir(directory.c_str(), 0775) < 0)
            klee_error("cannot create \"%s\": %s", directory.c_str(), strerror(errno));

        m_outputDirectory = directory;
    } else {
        // "klee-out-<i>"
        int i = 0;
        for (; i < INT_MAX; ++i) {
            SmallString<128> d(directory);
            llvm::sys::path::append(d, "klee-out-");
            raw_svector_ostream ds(d);
            ds << i;
            // SmallString is always up-to-date, no need to flush. See Support/raw_ostream.h

            // create directory and try to link klee-last
            if (mkdir(d.c_str(), 0775) == 0) {
                m_outputDirectory = d;

                SmallString<128> klee_last(directory);
                llvm::sys::path::append(klee_last, "klee-last");

                if ((unlink(klee_last.c_str()) < 0) && (errno != ENOENT)) {
                    klee_warning("cannot remove existing klee-last symlink: %s",
                                 strerror(errno));
                }

                size_t offset = m_outputDirectory.size() -
                                llvm::sys::path::filename(m_outputDirectory).size();
                if (symlink(m_outputDirectory.c_str() + offset, klee_last.c_str()) <
                    0) {
                    klee_warning("cannot create klee-last symlink: %s", strerror(errno));
                }

                break;
            }

            // otherwise try again or exit on error
            if (errno != EEXIST)
                klee_error("cannot create \"%s\": %s", m_outputDirectory.c_str(), strerror(errno));
        }
        if (i == INT_MAX && m_outputDirectory.str().equals(""))
            klee_error("cannot create output directory: index out of range");
    }

    klee_message("output directory is \"%s\"", m_outputDirectory.c_str());

    // open warnings.txt
    std::string file_path = getOutputFilename("warnings.txt");
    if ((klee_warning_file = fopen(file_path.c_str(), "w")) == NULL)
        klee_error("cannot open file \"%s\": %s", file_path.c_str(), strerror(errno));

    // open messages.txt
    file_path = getOutputFilename("messages.txt");
    if ((klee_message_file = fopen(file_path.c_str(), "w")) == NULL)
        klee_error("cannot open file \"%s\": %s", file_path.c_str(), strerror(errno));

    // open info
    m_infoFile = openOutputFile("info");
}

inline KleeHandler::~KleeHandler() {
    delete m_pathWriter;
    delete m_symPathWriter;
    fclose(klee_warning_file);
    fclose(klee_message_file);
}

inline void KleeHandler::processTestCase(const ExecutionState &state,
                                  const char *errorMessage,
                                  const char *errorSuffix) {
    constraints = state.getConstraints();

    // ExprPPrinter::printConstraints(llvm::errs(), constraints);
    auto ps = state.getPathStream().writer;
    auto id = state.getPathStream().getID();

    // save path constraint in SMTLIB2
    std::string constraints_str;
    m_interpreter->getConstraintLog(state, constraints_str,Interpreter::SMTLIB2);
    auto f = openTestFile("stp",id);
    *f << constraints_str;

    // solve path constraint
    std::vector< std::pair<std::string, std::vector<unsigned char> > > assign;
    m_interpreter->getSymbolicSolution(state,assign);

    // cout << "Symbolic Solution for a path" << endl;
    // for (auto item : assign){
    //     cout << item.first << " : ";
    //     for (auto ii : item.second){
    //         std::cout << "0x" 
    //           << std::hex << std::setw(2) << std::setfill('0') // Ensure 2 digits with leading zero
    //           << static_cast<unsigned int>(static_cast<unsigned char>(ii)) << " , ";
    //     }
    //     cout << endl;
    // }
    
    vector<unsigned char> out{};
    vector<bool> branches{};
    ps->readStream(id, out);
    for (auto& c : out) {
        branches.push_back(c & 1);
    }

    pathConstraints.push_back({constraints,assign, branches});

    if (pathConstraints.size() >= MAX_PATHS) {
        m_interpreter->setHaltExecution(true);
    }
}

inline void KleeHandler::setInterpreter(Interpreter *i) {
    m_interpreter = i;

    m_pathWriter = new TreeStreamWriter(getOutputFilename("paths.ts"));
    assert(m_pathWriter->good());
    m_interpreter->setPathWriter(m_pathWriter);

    m_symPathWriter = new TreeStreamWriter(getOutputFilename("symPaths.ts"));
    assert(m_symPathWriter->good());
    m_interpreter->setSymbolicPathWriter(m_symPathWriter);
}

inline std::string KleeHandler::getOutputFilename(const std::string &filename) {
    SmallString<128> path = m_outputDirectory;
    sys::path::append(path,filename);
    return path.c_str();
}

inline std::unique_ptr<llvm::raw_fd_ostream>
KleeHandler::openOutputFile(const std::string &filename) {
    std::string Error;
    std::string path = getOutputFilename(filename);
    auto f = klee_open_output_file(path, Error);
    if (!f) {
        klee_warning("error opening file \"%s\".  KLEE may have run out of file "
                     "descriptors: try to increase the maximum number of open file "
                     "descriptors by using ulimit (%s).",
                     path.c_str(), Error.c_str());
        return nullptr;
    }
    return f;
}

inline std::unique_ptr<llvm::raw_fd_ostream>
KleeHandler::openTestFile(const std::string &suffix, unsigned id) {
    std::stringstream filename;
    filename << "path" << std::setfill('0') << std::setw(6) << id << '.' << suffix;
    return openOutputFile(filename.str());
}

// load a .path file
inline void KleeHandler::loadPathFile(std::string name,
                               std::vector<bool> &buffer) {
    std::ifstream f(name.c_str(), std::ios::in | std::ios::binary);

    if (!f.good())
        assert(0 && "unable to open path file");

    while (f.good()) {
        unsigned value;
        f >> value;
        if (f.good())
            buffer.push_back(!!value);
        f.get();
    }
}

inline void KleeHandler::getKTestFilesInDir(std::string directoryPath,
                                     std::vector<std::string> &results) {
    std::error_code ec;
    llvm::sys::fs::directory_iterator i(directoryPath, ec), e;
    for (; i != e && !ec; i.increment(ec)) {
        auto f = i->path();
        if (f.size() >= 6 && f.substr(f.size()-6,f.size()) == ".ktest") {
            results.push_back(f);
        }
    }

    if (ec) {
        llvm::errs() << "ERROR: unable to read output directory: " << directoryPath
                     << ": " << ec.message() << "\n";
        exit(1);
    }
}

inline std::string KleeHandler::getRunTimeLibraryPath(const char *argv0) {
    // allow specifying the path to the runtime library
    const char *env = getenv("KLEE_RUNTIME_LIBRARY_PATH");
    if (env)
        return std::string(env);

    // Take any function from the execution binary but not main (as not allowed by
    // C++ standard)
    void *MainExecAddr = (void *)(intptr_t)getRunTimeLibraryPath;
    SmallString<128> toolRoot(
            llvm::sys::fs::getMainExecutable(argv0, MainExecAddr)
    );

    // Strip off executable so we have a directory path
    llvm::sys::path::remove_filename(toolRoot);

    SmallString<128> libDir;

    if (strlen( KLEE_INSTALL_BIN_DIR ) != 0 &&
        strlen( KLEE_INSTALL_RUNTIME_DIR ) != 0 &&
        toolRoot.str().endswith( KLEE_INSTALL_BIN_DIR ))
    {
        KLEE_DEBUG_WITH_TYPE("klee_runtime", llvm::dbgs() <<
                                                          "Using installed KLEE library runtime: ");
        libDir = toolRoot.str().substr(0,
                                       toolRoot.str().size() - strlen( KLEE_INSTALL_BIN_DIR ));
        llvm::sys::path::append(libDir, KLEE_INSTALL_RUNTIME_DIR);
    }
    else
    {
        KLEE_DEBUG_WITH_TYPE("klee_runtime", llvm::dbgs() <<
                                                          "Using build directory KLEE library runtime :");
        libDir = KLEE_DIR;
        llvm::sys::path::append(libDir, "runtime/lib");
    }

    KLEE_DEBUG_WITH_TYPE("klee_runtime", llvm::dbgs() <<
                                                      libDir.c_str() << "\n");
    return libDir.c_str();
}
