cmake_minimum_required(VERSION 3.16.9)
project(doppler)

set(CMAKE_CXX_STANDARD 17)

add_compile_options(-Wall)
add_compile_options("$<$<CONFIG:RELEASE>:-pedantic-errors>")

#### Dependencies

find_package(LLVM 13 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
add_definitions(${LLVM_DEFINITIONS})

llvm_map_components_to_libnames(LLVM_LIBS all)

execute_process(COMMAND llvm-config-13 --libs all OUTPUT_STRIP_TRAILING_WHITESPACE
        OUTPUT_VARIABLE llvm_libraries)
message(STATUS "LLVM libraries: ${llvm_libraries}")

find_package(Threads REQUIRED)
message(STATUS "Found Threads: ${Threads_FOUND}")

find_package(ZLIB REQUIRED)
message(STATUS "Found ZLIB: ${ZLIB_FOUND}")

find_package(Z3 REQUIRED)
message(STATUS "Found Z3: ${Z3_FOUND}")

find_package(SQLite3)
if (NOT SQLite3_FOUND)
    message( FATAL_ERROR "SQLite3 not found, please install" )
endif()

find_program(
        SQLITE_CLI
        NAMES "sqlite3"
        DOC "Path to sqlite3 tool"
)

if (NOT SQLITE_CLI)
    set(SQLITE_CLI "")
endif()

####
# KLEE UCLIBC

set(KLEE_UCLIBC_PATH "" CACHE PATH "Path to klee-uclibc root directory")
set(KLEE_UCLIBC_BCA_NAME "klee-uclibc.bca")
if (NOT KLEE_UCLIBC_PATH STREQUAL "")
    # Find the C library bitcode archive
    set(KLEE_UCLIBC_C_BCA "${KLEE_UCLIBC_PATH}/lib/libc.a")
    if (NOT EXISTS "${KLEE_UCLIBC_C_BCA}")
        message(FATAL_ERROR
                "klee-uclibc library not found at \"${KLEE_UCLIBC_C_BCA}\". Set KLEE_UCLIBC_PATH to klee-uclibc root directory or empty string.")
    endif()
    message(STATUS "Found klee-uclibc library: \"${KLEE_UCLIBC_C_BCA}\"")
    # Copy KLEE_UCLIBC_C_BCA so KLEE can find it where it is expected.
    # Location where KLEE will look for the built runtimes by default.
    set(KLEE_RUNTIME_DIRECTORY "${CMAKE_BINARY_DIR}/runtime/lib")
    file(MAKE_DIRECTORY ${KLEE_RUNTIME_DIRECTORY})
    execute_process(COMMAND ${CMAKE_COMMAND} -E copy
            "${KLEE_UCLIBC_C_BCA}"
            "${KLEE_RUNTIME_DIRECTORY}/${KLEE_UCLIBC_BCA_NAME}"
    )
else()
    message(STATUS "Skipping copying of klee-uclibc runtime")
endif()

######

include_directories(
        ${PROJECT_SOURCE_DIR}/include
        ${LLVM_INCLUDE_DIRS}
        ${Z3_INCLUDE_DIRS}
        ${PROJECT_SOURCE_DIR}/include/cxxopts/include
        thirdparty/klee/include
        thirdparty/klee/build/include)
        # benchmarks/proftpd-simple/include)

link_directories(thirdparty/klee/build/lib)
add_subdirectory(thirdparty/klee/lib)

add_executable(${PROJECT_NAME}
        src/main.cpp
        src/langGenerator.cpp
        src/langCompiler.cpp
        src/validStmt.cpp
        src/validVar.cpp
        src/aaInfo.cpp
        src/l-star/RE_ReaderWriter.cpp
        src/l-star/RE_RegularExpression.cpp
        src/l-star/RE_TreeNode.cpp)
target_link_libraries(${PROJECT_NAME}
        kleeCore
        kleeBasic
        kleaverSolver
        ${llvm_libraries}
        Threads::Threads
        ${CURL_LIBRARIES}
        # ${CURSES_LIBRARIES}
        ${Z3_LIBRARIES})

add_executable(klee tool/klee.cpp)
target_link_libraries(klee
        kleeCore
        kleeBasic
        kleaverSolver
        ${llvm_libraries}
        Threads::Threads
        ${CURL_LIBRARIES}
        # ${CURSES_LIBRARIES}
        ${Z3_LIBRARIES})

# add_executable(proftpd-simple benchmarks/proftpd-simple/src/main.c)
