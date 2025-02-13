# command
```shell
$ clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo3.c -o demo3.bc
$ cd DOPPLER
$ rm -rf ./doppler-run/
$ ./doppler --file ../demo_examples/demo3.bc --entry main --vars ../demo_examples/demo3.json --src ../demo_examples/demo3.c --use_src true --compiler demo3.doppler -l false --output_path  ../demo_examples/demo3_result
```