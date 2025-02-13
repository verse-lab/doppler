# BOPC
This is an instruction to help reproduce the experiment results presented in Table 4.

* `demo_examples` contains all binaries of demo programs.
* `real_examples` contains all binaries of real programs.
* `payloads` contains the payload written in SPLoit language for each attack goal. 
* `run.sh` is an all-in-one script to test programs with each attack goal and store the running results in a CSV.
* `tb4_bopc.sh` is a push-button script to reproduce experiment results shown in Table 4 of the paper.

As discussed in the paper, limited by SPLoit language, BOPC cannot support general `summation` and `linkedlst` goals. Therefore, only 4 payload scripts in total.

## Install BOPC

### From Docker file
We highly recommend you to build BOPC via Dockerfile because BOPC is in Python 2.

Execute:
```bash
cd BOPC_payload
docker build -t bopc-image .
docker run -it --name my-bopc bopc-image /bin/bash
```
### From source code
Please refer to this [link](https://github.com/sei-eschwartz/BOPC) for BOPC setup.

## Run BOPC
As designed by BOPC, each execution requires two inputs: 
1) a payload file written in SPLoit language
2) a binary file of the vulnerable program

Note: BOPC only supports x86 architecture, please use a AMD machine to produce the binary file or through cross compilation if you want to test your own program.

### Run single program
Execute:
```bash
time python ./BOPC/source/BOPC.py -dd --binary <path_of_binary> --source <path_of_payload> --abstraction save --entry -1 --format gdb
```

### Run multiple programs
Execute:
```bash
chmod +x ./run.sh
./run.sh demo # if you want to test demo programs only
./run.sh real # if you want to test real programs only
./run.sh demo my_result.csv # set the second argument if you want to change output file path
```
By default, it would produce the file `results.csv` recording the time for each program in each attack goal. If BOPC succeeds in any of those tasks, it would produce a `gdb` file in directory of the binaries.

In real examples, it would take a long time to get all programs finished. As discussed in the paper, we got timeouts in three tasks of `sqlite` and `nginx`. Please exclude them if you want to execute `./run.sh real`. 

### Reproduce results for BOPC in Table 4
Execute:
```bash
chmod +x ./tb4_bopc.sh
./tb4_bopc.sh quick # it produces results for programs that requires less than 60 seconds
./tb4_bopc.sh standard # it produces results for programs that requires less than 2 hours
./tb4_bopc.sh timeout # it execute programs that BOPC took more than 2 hours
```
The execution of `standard` mode may take a few hours. Results will be stored in the following files:

* `tb4_bopc_quick_results.csv`
* `tb4_bopc_standard_results.csv`
* `tb4_bopc_timeout_results.csv`

We record the `gdb` files in `./real_examples` that BOPC succeeded in generating attacks. They are `print`in `cherry` and `memrd`in `nginx`. 

Note: the execution time presented in Table 4 might vary from machine to machine.