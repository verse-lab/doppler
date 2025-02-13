# command
```
rm -rf ./doppler-run/
./doppler --file ../real_examples/nginx-1.3.9-original/objs/nginx.ll --entry ngx_http_discard_request_body_filter --vars ../real_examples/nginx-1.3.9-original/nginx.json --src ../real_examples/nginx-1.3.9-original/src/ --use_src true --compiler ~/DOPExploit/MyDOP/real_examples/nginx-1.3.9-original/compiler.doppler
```
# backup
If you occasionally overwrite the Makefile, do `./configure` again. Then, run do the following modification:
```
1. go to ./objs/Makefile, replace .o with .ll
2. add `LINK =	llvm-link-13` at line 3
3. delete line 313 `-lcrypt -lcrypto -lcrypto -lz`
4. line 206: change to objs/nginx.ll
5. run make again
```