# compile
Don't do `./configure`, because we overwrote the makefile.
```
cd src
make
```

# grammar
```
rm -rf ./doppler-run/
./doppler --file ../real_examples/sudo-1.8.0/src/sudo.bc --entry main --src ../real_examples/sudo-1.8.0/src --vars ../real_examples/sudo-1.8.0/src/sudo.json --use_src true &> ../real_examples/sudo-1.8.0/result_passive.txt
```
