# compile
```
cd cherry/src
make
```
# get grammar
```
cd DOPPLER/build/
rm -rf ./doppler-run/
./doppler --file ../real_examples/cherry/src/cherry.ll --entry main --src ../real_examples/cherry/src --vars ../real_examples/cherry/cherry.json --use_src true --lstar false --compiler [path_to_store_compiler] &> ../real_examples/cherry/result_passive.txt
```