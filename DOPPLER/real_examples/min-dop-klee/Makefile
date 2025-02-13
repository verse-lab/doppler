CC=clang-13
CFLAGS= -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE=../../thirdparty/klee/include/

.PHONY: clean

min-dop: ./src/vuln_srv_klee.c
	$(CC) -I $(KLEE) $(CFLAGS) $^ -o min-dop.bc
	opt-13 --lowerswitch min-dop.bc -o min-dop_low.bc

clean:
	rm min-dop min-dop.bc min-dop_low.bc