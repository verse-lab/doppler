## Compile
```
apt install libgdbm-compat-dev
apt-get install libgdbm-dev
cd src/modules/standard
clang-13 -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names -I../../../../../thirdparty/klee/include -I../../os/unix -I../../include -DLINUX=22 -DUSE_HSREGEX -DNO_DL_NEEDED ./mod_rewrite.c -o ./mod_rewrite.ll
```

## Exploit Command
rm -rf ./doppler-run/
$ ./doppler --file ../real_examples/apache_1.3.28/src/modules/standard/mod_rewrite.ll --entry hook_uri2file --src ../real_examples/apache_1.3.28/src/modules/standard/ --vars ../real_examples/apache_1.3.28/src/modules/standard/mod_rewrite.json --use_src true --lstar false --compiler [path_to_store_compiler]
