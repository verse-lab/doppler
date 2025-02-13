## Part1: Run existing examples
We have already provided required input files for all examples. However, you might still need to recompile the LLVM IR file sometimes if you meet some execution issues.

### demo examples
In `Doppler/demo_examples/`, commands for each example are recorded in `demoX_run.md` (`X` is from 1-5).
### real_examples
In `DOPPLER/real_examples/`, commands for each real programs are in each program folder named as `[prog_name]_run.md`.

Note that please restrictly follow the commands we provide to compile the program for LLVM IR because we manually changed some configuration files. If you run `./configure` directly, it might overwrite our modifications.

## Part2: Prepare your vulnerable program

### Prerequest
* It is an executable C project 
* The position of the vulnerability is known
* The set of controllable variables is known

### Compiler and build system
* The most ideal setting: Clang-13 and Makefile. Add the following settings to `Makefile`

```make
CC=clang-13
CFLAGS= -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE=../../../thirdparty/klee/include/  # replace it with your klee path

$(CC) -I $(KLEE) -I ./include ../../ $(CFLAGS) $^  # compile libs to LLVM IR
llvm-link-13 -S *.ll -o cherry.ll   # link files

```
* If the project is compiled by `configure` file, make the following changes to `configure` file:

```shell
# step 1: grant privilege
$ chmod -x ./configure
$ chmod +x ./src/helpers/PrintPath ./src/Configure ./src/*.sh ./src/apaci # add them if there are more files required execution privilege

# step 2: run ./configure
$ CC=clang-13 LDFLAGS='-L/usr/lib' ./configure --without-http_rewrite_module
# or
$ CC=clang-13 ./configure --build=aarch64-unknown-linux-gnu # based on msg you get from compilation

# step 3: set klee path in make
$ make CFLAGS='-I/root/DOPExploit/DOPPLER/thirdparty/klee/include -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names' # please adjust based on your project

```
Above is a general procedure we made in our real examples, specific changes might be done based on different programs.

### Controllable variables
Users/Attackers can only rewrite the value of controllable variables. The set of these controllable variables, provided by users, consists of two parts:

#### KLEE annotations
We need to mark controllable variables as symbolic by `klee_make_symbolic()` function after their declarations. Here is an example:

```c
#include <klee/klee.h>

int main(int argc, char *argv[]) {
    int a, b, c;
    // omit...

    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");

    // omit...
}

```

For more information, see [documentation](https://klee-se.org/)

#### A summary in JSON
You need to indicate details of controllable variables in a `JSON` file, following the format below:
```json
[
  {
    "source": "a",
    "symbol": "a",
    "function": "main",
    "location": {
      "startLine": 0,
      "startColumn": 0,
      "endColumn": 0
    }
  },
  ... more variables
]
```
`source` is the variable name in the source code.

`symbol` is the symbol used in LLVM IR, with `-fno-discard-value-names` in the compilation setting, `symbol` is usually the same as `source`.

`function` is the function name the variable is in.

`location` is unused. Please keep this structure and set it to 0.


### Executing Doppler
Use the following commands to test your program:
```shell
$ rm -rf ./doppler-run/
$ ./doppler --file [project_llvm_IR_file] --entry main --src [source_code_dir] --vars [controllable_variables].json --use_src true &> [output_file].txt
```

A concrete example for `Cherry`:
```shell
rm -rf ./doppler-run/
./doppler --file ../benchmarks/cherry/src/cherry.ll --entry main --src ../benchmarks/cherry/src --vars ../benchmarks/cherry/cherry.json --use_src true &> ../benchmarks/cherry/result_passive.txt
```

### Some Tricks
If you cannot get any path from KLEE after the execution, please try the following steps:

* **Move klee annotations.** Try moving annotations to other positions, maybe closer to potential valid statements you want for the grammar.
* **Simplify the program.** Try simplifying the original program. Manually identify some potential execution path and delete the functions, big libraries, and branches that are irrelevant to your target path.