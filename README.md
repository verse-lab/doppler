# Doppler
## Structure
The doppler code is organized as follows:
```
--DOPPLER
 |-- src        # main source code
 |-- include    # libraries including json, cxxopt, lstar
 |-- thirdparty
        |-- klee        # klee
 |-- tool       # klee
 |-- demo_examples      # demonstration programs
 |-- real_examples      # real-world programs
--BOPC_evaluation  # instructions and payload for BOPC
--DOPPLER_evaluation  # instructions for DOPPLER
```
The instructions for the comparison with BOPC (Table 4 in the paper) is [here](./BOPC_evaluation/README.md).

## Building Doppler using Dockerfile
We highly recommend you to build Doppler via Dockerfile.

Execute:
```bash
cd DOPPLER
docker build -t doppler-image .
docker run -it --name my-doppler doppler-image /bin/bash 
```
In the docker container `my-doppler`, you will get an executable file `/home/DOPPLER/build/doppler`.

## Building Doppler using CMake
If you want to build Doppler in your local environment, we recommend you to build in Ubuntu 22.04. Please follow below commands:

### 1. Prepare dependencies
Execute:
```bash
sudo apt-get update
sudo apt-get -y install git build-essential cmake wget python3 python3-pip sqlite3 libsqlite3-dev
pip install lit
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
sudo apt-get -y install clang-13 llvm-13 llvm-13-dev llvm-13-tools
```
### 2. Prepare Z3
Please refer to this [link](https://github.com/Z3Prover/z3/blob/master/README-CMake.md#unix-makefiles).

Clone [z3](https://github.com/Z3Prover/z3) somewhere to your system:

```bash
git clone git@github.com:Z3Prover/z3.git ~/z3 # cloning to ~/z3 for example
cd ~/z3
```
Make a build directory, and construct unix makefiles:
```bash
mkdir build
cd build
cmake -G "Unix Makefiles" ../
make -j4 # Replace 4 with an appropriate number
```
Set `CMAKE_PREFIX_PATH` to the build directory:
```bash
export CMAKE_PREFIX_PATH="~/z3/build" # if ~/z3 was used
```
### 3. Prepare the KLEE
Execute:
```bash
cd DOPPLER/thirdparty/klee
mkdir build
cd build
cmake ..
make -j4 # Replace 4 with an appropriate number
```
### 4. Compile Doppler
Execute
```bash
cd DOPPLER/
mkdir build
cd build
cmake .. # if using uclibc: cmake -DKLEE_UCLIBC_PATH=<PATH_TO_UCLIBC> ..
        # if Z3 cannot find: CMAKE_PREFIX_PATH="/home/z3/build" cmake ..
make -j4 # Replace 4 with an appropriate number
```
After the compilation, you will get an executable file `./doppler`.

### (Optional) 5. Compiling and using uClibc

```bash
git clone https://github.com/klee/klee-uclibc.git
cd klee-uclibc
./configure --make-llvm-lib --with-cc clang-13 --with-llvm-config llvm-config-13
make KLEE_CFLAGS="-DKLEE_SYM_PRINTF"
```
Then, build Doppler with uClibc:

```bash
cd DOPPLER/
mkdir build
cd build
cmake -DKLEE_UCLIBC_PATH=<path>/klee-uclibc ..
make -j4 # Replace 4 with an appropriate number
```

## Using Doppler
### Running a demo program
There are five demonstration programs in `DOPPLER/demo_examples`.

Take `demo1.c` as an example:

Compile `demo1`:
```bash
cd DOPPLER/demo_examples
clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo1.c -o demo1.bc
```
Execute doppler:
```bash
cd DOPPLER/build
rm -rf ./doppler-run/ # ignore if the folder doesn't exist
./doppler --file ../demo_examples/demo1.bc --entry main --vars ../demo_examples/demo1.json --src ../demo_examples/demo1.c --use_src true --compiler demo1.doppler --lstar true --dfa demo1_dfa.txt -o ../demo_examples/demo1_result
```
After the execution, it would stores the following output files in the folder set by `--output_path` or `-o`:
* demo1_dfa.txt    (DFA file)
* demo1.doppler (Compiler)
* grammar.txt (Grammar)
* tracemap (Execution traces, used in Compiler)
The option `--output_path` or `-o` is optional. If you did not set the output folder, these files will be stored in `/doppler-run`.

Compile exploit program:
```bash
./demo1.doppler --strexploit <your_attack_code> # or --exploit <path_of_your_attack_code>
```
Then, it would print corresponding attack payload or report syntax error.

For example:
```bash
$ ../demo_examples/demo1_result/demo1.doppler --strexploit "init;vs4;vs2"
Syntax Checking...
Getting Payload...
Payload: 
a:0x00 0x00 0x00 0x00 
b:0x00 0x00 0x00 0x00 
c:0x01 0x00 0x00 0x00 
d:0x00 0x00 0x00 0x00 
```
Note that labels of valid assignments might vary from execution to execution. Please write the exploit code based on the grammar you get.

### Running a real program
There are 12 demonstration programs in `DOPPLER/real_examples`. Find more detailed instructions [here](./DOPPLER/README.md).

### Running a new program
1. Prepare KLEE annotation
Make sure you find the position of the vulnerability and the set of vulnerable variables. Then, annotate these variables using `klee_make_symbolic()` in the source code. For more details, see [KLEE](https://klee-se.org/tutorials/testing-function/).

After the annotation, record these variables and location information in a JSON file:
```json
[
  {
    "source":"source_name",
    "symbol":"symbol_name",
    "function":"function_name",
    "location":{
      "startLine" : 0,
      "startColumn" : 0,
      "endColumn" : 0
      }
  }
]
```

2. Get the LLVM bitcode file
```bash
cd DOPPLER/[your_directory]
clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names <input_source_code> -o <output_bitcode>
```
3. Run in Doppler
```bash
cd ./build
make
rm -rf ./doppler-run/
./doppler --file <path_of_LLVM_file> --entry main --vars <JSON_file_vul_var> --src <path_of_source_code> --use_src true --compiler <attck_compiler_name> --lstar <bool> --dfa <dfa_file_name> --output_path <folder_to_store_outputs>
```
After the execution, you will get an attack grammar, dfa, and a compiler for generated attack language in the position set by `--output_path`.

Note that above instructions are for single file programs. If you want to test Doppler in a whole project, more detailed instructions can be found [here](./DOPPLER/README.md).
