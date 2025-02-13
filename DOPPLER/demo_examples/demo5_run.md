# command
```shell
$ clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo5.c -o demo5.bc
$ cd DOPPLER
$ rm -rf ./doppler-run/
$ ./doppler --file ../demo_examples/demo5.bc --entry main --vars ../demo_examples/demo5.json --src ../demo_examples/demo5.c --use_src true --compiler demo5.doppler --output_path  ../demo_examples/demo5_result
```