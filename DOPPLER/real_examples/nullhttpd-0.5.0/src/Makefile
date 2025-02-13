# Makefile for Null httpd
CC      = clang-13
CFLAGS	= -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE	= ../../../thirdparty/klee/include
# LDFLAGS = -lpthread 
# OBJECTS = cgi.o files.o format.o http.o main.o server.o
# LIBRARY = cgi.c files.c format.c http.c 

all: httpd

# httpd: $(OBJECTS)
# 	llvm-link-13 -S $^ -o ../httpd/bin/httpd
# 	@echo Make httpd is complete.

httpd: main.c
	$(CC) -I$(KLEE) -I./include $(CFLAGS) -c $< -o httpd.ll

# cgi.o: cgi.c main.h
# 	$(CC) -c $< -o  $@ $(CFLAGS) -I $(KLEE) 
# # donfig.o: config.c
# # 	$(CC) -c $< -o  $@ $(CFLAGS) -I $(KLEE) 
# files.o: files.c main.h
# 	$(CC) -c $< -o  $@ $(CFLAGS) -I $(KLEE) 
# format.o: format.c main.h
# 	$(CC) -c $< -o  $@ $(CFLAGS) -I $(KLEE) 
# http.o: http.c main.h
# 	$(CC) -c $< -o  $@ $(CFLAGS) -I $(KLEE) 
# main.o: main.c main.h
# 	$(CC) -c $< -o  $@ $(CFLAGS) -I $(KLEE) 
# server.o: server.c main.h
# 	$(CC) -c $< -o  $@ $(CFLAGS) -I $(KLEE) 

clean:
	rm -f httpd.ll *.o *~
