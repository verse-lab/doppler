# compile
```
cd src
make
```

# command
```
rm -rf ./doppler-run/
./doppler --file ../real_examples/nullhttpd-0.5.0/src/httpd.ll --entry main --src ../real_examples/nullhttpd-0.5.0/src --vars ../real_examples/nullhttpd-0.5.0/src/httpd.json --use_src true -lstar false
```