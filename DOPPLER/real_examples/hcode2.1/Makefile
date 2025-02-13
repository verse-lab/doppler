PRG = a.out
INC = hcode.h h2Bcode.h h3Bcode.h h4Bcode.h
SRC = hcode.c conv.c in.c out.c mail.c
OBJ = $(SRC:.c=.o)
CC = clang-13
CFLAGS= -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE=../../thirdparty/klee/include/

BINDIR = $HOME/bin

all: hcode

hcode : $(OBJ)
	llvm-link-13 -S $^ -o hcode.bc
hcode.o : hcode.c
	$(CC) -c $< -o  $@ -I $(KLEE) $(CFLAGS)
conv.o : conv.c hcode.h h2Bcode.h h4Bcode.h
	$(CC) -c $< -o  $@ -I $(KLEE) $(CFLAGS)
in.o : in.c 
	$(CC) -c $< -o  $@ -I $(KLEE) $(CFLAGS)
out.o : out.c
	$(CC) -c $< -o  $@ -I $(KLEE) $(CFLAGS)
mail.o : mail.c
	$(CC) -c $< -o  $@ -I $(KLEE) $(CFLAGS)

clean:
	rm -f $(OBJ) hcode.bc
