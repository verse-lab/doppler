CC=clang-13
CFLAGS= -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE=../../../thirdparty/klee/include/

.PHONY: clean

cherry: server.c log.c rio.c http.c epoll.c task.c utils.c
	$(CC) -I $(KLEE) -I ./include ../../ $(CFLAGS) $^ && llvm-link-13 -S *.ll -o cherry.ll

clean:
	rm -f *.ll
	rm -f *.o
	rm -f cherry
