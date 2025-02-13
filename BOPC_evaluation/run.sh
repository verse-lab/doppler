#!/bin/bash

# Get the list of binaries in the current folder
if [ "$1" == "demo" ]; then
    directory="./demo_examples"
elif [ "$1" == "real" ]; then
    directory="./real_examples"
else
    echo "Error: Missing target. Please choose 'demo' or 'real'."
    exit 1
fi

binaries=$(ls $directory)
payloads=$(ls ./payloads)

if [ -n "$2" ]; then
    output="$2"
else
    output="results.csv"
fi

if [ -f "$output" ]; then
    rm $output
fi

# Create the CSV file with the header
echo "binary name, payload, real time, user time, sys time" >> $output

# Run BOPC for each binary and payload combination
for binary in $binaries
do
    if [ $binary != *.abs ]; then
        if [ $binary != *.gdb ]; then
            for payload in $payloads
            do
                # Run BOPC and time the run
                echo "Running BOPC for $binary with $payload"

                echo "time python ./BOPC/source/BOPC.py -dd --binary $directory/$binary --source ./payloads/$payload --abstraction save --entry -1 --format gdb"

                # test examples
                out=$({ time python ./BOPC/source/BOPC.py -dd --binary $directory/$binary --source ./payloads/$payload --abstraction save --entry -1 --format gdb 1>/dev/null; } 2>&1)

                echo $out
                # # Extract the real, user, and sys times
                # real=$(echo $out | grep -o "real [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
                # sys=$(echo $out | grep -o "sys [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")
                user=$(echo $out | grep -o "user [0-9]*m[0-9.]*s" | grep -o "[0-9]*m[0-9.]*s")

                echo "$binary, $payload, $user" >> $output
            done
        fi
    fi
done
