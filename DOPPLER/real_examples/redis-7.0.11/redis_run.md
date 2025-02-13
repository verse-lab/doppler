### Compile
```shell
chmod +x src/mkreleasehdr.sh
CC=clang-13 make MALLOC=libc
make distclean
make

```

### KLEE Results
```
./klee --entry-point getKeysUsingKeySpecs ~/DOPExploit/MyDOP/real_examples/redis-7.0.11/src/redis-server.ll 

KLEE: done: total instructions = 465545
KLEE: done: completed paths = 1024
KLEE: done: partially completed paths = 5115
KLEE: done: generated tests = 1027
```

### Execute
```shell
./doppler --file ../real_examples/redis-7.0.11/src/redis-server.ll --entry getKeysUsingKeySpecs --src ../real_examples/redis-7.0.11/src/ --vars ../real_examples/redis-7.0.11/src/redis-server.json --use_src true --compiler ./compiler.doppler -lstar false

```
