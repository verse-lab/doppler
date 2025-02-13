CC=clang
CFLAGS= -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE=../../thirdparty/klee/include/

.PHONY: clean

proftd-simple: src/main.c
	$(CC) -I $(KLEE) -I ./include ../../ $(CFLAGS) $^
	$(CC) -I $(KLEE) -I include $^ -o $@ $(CFLAGS) 

clean:
	rm a.out
