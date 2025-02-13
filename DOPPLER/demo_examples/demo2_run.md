# command
```shell
$ clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo2.c -o demo2.bc
$ cd DOPPLER
$ rm -rf ./doppler-run/
$ ./doppler --file ../demo_examples/demo2.bc --entry main --vars ../demo_examples/demo2.json --src ../demo_examples/demo2.c --use_src true --compiler demo2.doppler --lstar false  --output_path  ../demo_examples/demo2_result
```
