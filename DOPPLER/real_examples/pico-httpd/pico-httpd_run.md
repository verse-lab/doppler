# compile
```
make
```
# grammar
```
rm -rf ./doppler-run/
./doppler --file ../real_examples/pico-httpd/main.ll --entry main --src ../real_examples/pico-httpd/ --vars ../real_examples/pico-httpd/pico.json --use_src true &> ../real_examples/pico-httpd/result_passive.txt
```