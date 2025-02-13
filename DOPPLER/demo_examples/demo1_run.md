# command
```shell
$ clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo1.c -o demo1.bc
$ cd DOPPLER/build
$ ./doppler --file ../demo_examples/demo1.bc --entry main --vars ../demo_examples/demo1.json --src ../demo_examples/demo1.c --use_src true --lstar true --compiler demo1.doppler --output_path  ../demo_examples/demo1_result
$ ./doppler --file ../demo_examples/demo1.bc --entry main --vars ../demo_examples/demo1.json --src ../demo_examples/demo1.c --use_src true --compiler demo1.doppler --output_path  ../demo_examples/demo1_result
```