#!/bin/bash

mkdir -p "./demo-log"
# build all demo programs
cd ../DOPPLER/demo_examples
clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo1.c -o demo1.bc
clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo2.c -o demo2.bc
clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo3.c -o demo3.bc
clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo4.c -o demo4.bc
clang-13 -I ../thirdparty/klee/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names demo5.c -o demo5.bc
cd ../../DOPPLER/build

# run in passive mode
for i in $(seq 1 1); do
    rm -rf ./doppler-run/
    wait
    ./doppler --file ../demo_examples/demo$i.bc --entry main --vars ../demo_examples/demo$i.json --src ../demo_examples/demo$i.c --use_src true --compiler demo$i.doppler --output_path  ../demo_examples/demo$i-passive-result > ../../DOPPLER_evaluation/demo-log/demo$i-passive-log.txt
    wait
done
# run in lstar mode
for i in $(seq 1 1); do
    rm -rf ./doppler-run/
    wait
    ./doppler --file ../demo_examples/demo$i.bc --entry main --vars ../demo_examples/demo$i.json --src ../demo_examples/demo$i.c --use_src true --lstar true --compiler demo$i.doppler --output_path  ../demo_examples/demo$i-lstar-result > ../../DOPPLER_evaluation/demo-log/demo$i-lstar-log.txt
    wait
done