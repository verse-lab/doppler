#!/bin/bash

# Get the list of binaries in the current folder
dir_demo="./demo_examples"
dir_real="./real_examples"
payloads=$(ls ./payloads)

file_list1 = $(find $(dir_demo) -type f ! -name "*.abs" ! -name "*.gdb")
file_list2 = $(find $(dir_real) -type f ! -name "*.abs" ! -name "*.gdb" ! -name "nginx" ! -name "sqlite")
binaries = $file_list1 $file_list2


if [ "$1" == "quick"]; then
    output="tb4_bopc_quick_results.csv"

elif [ "$1" == "standard" ]; then
    output="tb4_bopc_standard_results.csv"

elif [ "$1" == "timeout" ]; then
    output="tb4_bopc_timeout_results.csv"
else
    echo "Error: Missing target. Please choose 'quick' or 'real'."
    exit 1
fi

if [ -f "$output" ]; then
    rm $output
fi

# Create the CSV file with the header
echo "binary name, payload, real time, user time, sys time" >> $output

# Run BOPC for each binary and payload combination if it is quick and standard mode
if [ "$1" == "quick" ] || [ "$1" == "standard" ]; then
    for binary in $binaries
    do
        for payload in $payloads
        do
            # Run BOPC and time the run
            echo "Running BOPC for $binary with $payload"

            echo "time python ./BOPC/source/BOPC.py -dd --binary $binary --source ./payloads/$payload --abstraction save --entry -1 --format gdb"

            # test examples
            out=$({ time python ./BOPC/source/BOPC.py -dd --binary $binary --source ./payloads/$payload --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)

            echo $out
            # # Extract the real, user, and sys times
            # real=$(echo $out | grep -o "real [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
            # sys=$(echo $out | grep -o "sys [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
            user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")

            echo "$binary, $payload, $user" >> $output
        done

    done
fi

if [ "$1" == "standard" ]; then
    # run nginx in memrd, print, and nloop; sqlite in print and nloop
    echo "time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/memrd --abstraction save --entry -1 --format gdb"
    out=$({ time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/memrd --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
    echo "$binary, $payload, $user" >> $output

    echo "time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/print --abstraction save --entry -1 --format gdb"
    out=$({ time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/print --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
    echo "$binary, $payload, $user" >> $output

    echo "time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/nloop --abstraction save --entry -1 --format gdb"
    out=$({ time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/nloop --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
    echo "$binary, $payload, $user" >> $output

    echo "time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/print --abstraction save --entry -1 --format gdb"
    out=$({ time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/print --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
    echo "$binary, $payload, $user" >> $output

    echo "time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/nloop --abstraction save --entry -1 --format gdb"
    out=$({ time python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/nloop --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
    echo "$binary, $payload, $user" >> $output

elif [ "$1" == "timeout" ]; then
    # run nginx in memwr; sqlite in memrd and memwr
    echo "time timeout 7200 python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/memrd --abstraction save --entry -1 --format gdb"
    out=$({ time timeout 7200 python ./BOPC/source/BOPC.py -dd --binary ./real_examples/nginx --source ./payloads/memrd --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    if [ $? -eq 124 ]; then
        echo "$binary, $payload, timeout" >> $output
    else
        user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
        echo "$binary, $payload, $user" >> $output
    fi

    echo "time timeout 7200 python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/memrd --abstraction save --entry -1 --format gdb"
    out=$({ time timeout 7200 python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/memrd --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    if [ $? -eq 124 ]; then
        echo "$binary, $payload, timeout" >> $output
    else
        user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
        echo "$binary, $payload, $user" >> $output
    fi

    echo "time timeout 7200 python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/memwr --abstraction save --entry -1 --format gdb"
    out=$({ time timeout 7200 python ./BOPC/source/BOPC.py -dd --binary ./real_examples/sqlite --source ./payloads/memwr --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)
    echo $out
    if [ $? -eq 124 ]; then
        echo "$binary, $payload, timeout" >> $output
    else
        user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
        echo "$binary, $payload, $user" >> $output
    fi

fi
