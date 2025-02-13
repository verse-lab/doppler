CC=clang-13
CFLAGS= -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE=../../thirdparty/klee/include/

.PHONY: clean

server: main.c
	$(CC) -I $(KLEE) -I ./include ../../ $(CFLAGS) $^

clean:
	@rm -rf *.ll
	@rm -rf server
