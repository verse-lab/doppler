# compile
```
cd ghttpd-1.4
make
```

# grammar
```
cd DOPPLER/build/
rm -rf ./doppler-run/
./doppler --file ../real_examples/ghttpd-1.4/ghttpd.bc --entry main --src ../real_examples/ghttpd-1.4 --vars ../real_examples/ghttpd-1.4/ghttpd.json --use_src true --lstar false --compiler [path_to_store_compiler]
```