# command
```shell
$ clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo4.c -o demo4.bc
$ cd DOPPLER
$ rm -rf ./doppler-run/
$ ./doppler --file ../demo_examples/demo4.bc --entry main --vars ../demo_examples/demo4.json --src ../demo_examples/demo4.c --use_src true --compiler demo4.doppler --output_path  ../demo_examples/demo4_result
```
