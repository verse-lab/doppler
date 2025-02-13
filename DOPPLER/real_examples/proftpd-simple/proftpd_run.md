# compile
```
make
```
# grammar
```
rm -rf ./doppler-run/
./doppler --file ../real_examples/proftpd-simple-klee/proftd-simple --entry main --src ../real_examples/proftpd-simple-klee/src/main.c --use_src true --vars ../real_examples/proftpd-simple-klee/proftpd-simple.json
```