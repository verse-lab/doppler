#!/bin/bash

mkdir -p "./real-log"

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <program> <mode>"
    exit 1
fi

prog="$1"
mode="$2"

if [ "$mode" != "passive" ] && [ "$mode" != "lstar" ]; then
    echo "Wrong mode name"
    exit 1
fi

# compile the program
cd ../DOPPLER/real_examples

# if [ "$prog" = "min-dop" ]; then
#   cd min-dop-klee
#   make
#   cd ../
# fi

# if [ "$prog" = "proftpd" ]; then
    # cd proftpd-simple
    # make
    # cd ../
# fi

# if [ "$prog" = "ghttpd" ]; then
#     cd ghttpd-1.4
#     make
#     cd ../
# fi

# if [ "$prog" = "sudo" ]; then
#   pass
# fi

if [ "$prog" = "nullhttpd" ]; then
    cd nullhttpd-0.5.0
    cd src
    make
    cd ../../
fi

if [ "$prog" = "httpd" ]; then
    cd ./apache_1.3.28
    apt install -y libgdbm-compat-dev
    apt-get install -y libgdbm-dev
    cd src/modules/standard
    clang-13 -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names -I../../../../../thirdparty/klee/include -I../../os/unix -I../../include -DLINUX=22 -DUSE_HSREGEX -DNO_DL_NEEDED ./mod_rewrite.c -o ./mod_rewrite.ll
    cd ../../../../
fi

if [ "$prog" = "nginx" ]; then
    cd nginx-1.3.9
    make
    cd ../
fi

if [ "$prog" = "sqlite" ]; then
    cd ./sqlite-3.40.1
    apt-get install -y libtool libtool-bin
    clang-13 -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names ./shell_simp.c -I../../thirdparty/klee/include/ -o sqlite3-simp-shell.ll
    cd ../
fi

if [ "$prog" = "redis" ]; then
    cd redis-7.0.11
    chmod +x src/mkreleasehdr.sh
    CC=clang-13 make MALLOC=libc
    cd ..
fi

if [ "$prog" = "cherry" ]; then
    cd cherry/src
    make
    cd ../../
fi

if [ "$prog" = "pico" ]; then
    cd pico-httpd
    make
    cd ../
fi

# if [ "$prog" = "hcode" ]; then
#     cd hcode
#     make
#     cd ..
# fi

wait

cd ../
# already back to DOPPLER folder

cd ./build
# start the execution

rm -rf ./doppler-run/
wait

modelabel="false"

if [ "$mode" = "lstar" ]; then
    modelabel="true"
fi

if [ "$prog" = "min-dop" ]; then
    ./doppler --file ../real_examples/min-dop-klee/min-dop_low.bc --entry main --src ../real_examples/min-dop-klee/src/vuln_srv_klee.c --use_src true --vars ../real_examples/min-dop-klee/min_dop.json --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
    
fi

if [ "$prog" = "proftpd" ]; then
    ./doppler --file ../real_examples/proftpd-simple-klee/proftd-simple --entry main --src ../real_examples/proftpd-simple-klee/src/main.c --use_src true --vars ../real_examples/proftpd-simple-klee/proftpd-simple.json --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
    
fi

if [ "$prog" = "ghttpd" ]; then
    ./doppler --file ../real_examples/ghttpd-1.4/ghttpd.bc --entry main --src ../real_examples/ghttpd-1.4 --vars ../real_examples/ghttpd-1.4/ghttpd.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

if [ "$prog" = "sudo" ]; then
    ./doppler --file ../real_examples/sudo-1.8.0/src/sudo.bc --entry main --src ../real_examples/sudo-1.8.0/src --vars ../real_examples/sudo-1.8.0/src/sudo.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

if [ "$prog" = "nullhttpd" ]; then
    ./doppler --file ../real_examples/nullhttpd-0.5.0/src/httpd.ll --entry main --src ../real_examples/nullhttpd-0.5.0/src --vars ../real_examples/nullhttpd-0.5.0/src/httpd.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

if [ "$prog" = "httpd" ]; then
   ./doppler --file ../real_examples/apache_1.3.28/src/modules/standard/mod_rewrite.ll --entry hook_uri2file --src ../real_examples/apache_1.3.28/src/modules/standard/ --vars ../real_examples/apache_1.3.28/src/modules/standard/mod_rewrite.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt

fi

if [ "$prog" = "nginx" ]; then
    ./doppler --file ../real_examples/nginx-1.3.9-original/objs/nginx.ll --entry ngx_http_discard_request_body_filter --vars ../real_examples/nginx-1.3.9-original/nginx.json --src ../real_examples/nginx-1.3.9-original/src/ --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

if [ "$prog" = "sqlite" ]; then
    ./doppler --file ../real_examples/sqlite-3.40.1/sqlite3-simp-shell.ll --entry output_reset --src ../real_examples/sqlite-3.40.1/ --vars ../real_examples/sqlite-3.40.1/sqlite3.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

if [ "$prog" = "redis" ]; then
    ./doppler --file ../real_examples/redis-7.0.11/src/redis-server.ll --entry getKeysUsingKeySpecs --src ../real_examples/redis-7.0.11/src/ --vars ../real_examples/redis-7.0.11/src/redis-server.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

if [ "$prog" = "cherry" ]; then
    ./doppler --file ../real_examples/cherry/src/cherry.ll --entry main --src ../real_examples/cherry/src --vars ../real_examples/cherry/cherry.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt

fi

if [ "$prog" = "pico" ]; then
    ./doppler --file ../real_examples/pico-httpd/main.ll --entry main --src ../real_examples/pico-httpd/ --vars ../real_examples/pico-httpd/pico.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

if [ "$prog" = "hcode" ]; then
    ./doppler --file ../real_examples/hcode2.1/hcode.bc --entry main --src ../real_examples/hcode2.1/ --vars ../real_examples/hcode2.1/hcode.json --use_src true --lstar $modelabel --compiler $prog.doppler --output_path  ../real_examples/$prog-$mode-result --skip_reg true > ../../DOPPLER_evaluation/real-log/$prog-$mode-log.txt
fi

exit 1