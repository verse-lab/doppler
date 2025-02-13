PRG = a.out
SRC = conversation.c error.c exec.c exec_pty.c get_pty.c load_plugins.c net_ifs.c \
	  parse_args.c preload.c sudo_edit.c sudo_noexec.c \
	  sudo.c tgetpass.c ttysize.c term.c
OBJ = $(SRC:.c=.ll)
CC = clang-13
CFLAGS= -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names
KLEE=../../../thirdparty/klee/include/

BINDIR = $HOME/bin

all: sudo

sudo : $(OBJ)
	llvm-link-13 -S $^ -o sudoo.ll

SUDODEP = sudo.h ../include/sudo_plugin.h ../include/alloc.h \
	  ../include/error.h ../include/list.h ../include/missing.h \
      ../pathnames.h ../include/config.h

conversation.ll: conversation.c 
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  conversation.c
error.ll: error.c ../include/missing.h ../include/error.h ../include/config.h
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  error.c
exec.ll: exec.c  sudo_exec.h
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  exec.c
exec_pty.ll: exec_pty.c  sudo_exec.h
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  exec_pty.c
get_pty.ll: get_pty.c 
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  get_pty.c
net_ifs.ll: net_ifs.c 
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  net_ifs.c
load_plugins.ll: load_plugins.c 
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  load_plugins.c
parse_args.ll: parse_args.c
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  parse_args.c
preload.ll: preload.c
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  preload.c
# selinux.o: selinux.c 
# 	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  selinux.c
sesh.ll: sesh.c
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  sesh.c
sudo.ll: sudo.c 
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  sudo.c
sudo_edit.ll: sudo_edit.c 
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  sudo_edit.c
sudo_noexec.ll: sudo_noexec.c
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  sudo_noexec.c
tgetpass.ll: tgetpass.c 
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  tgetpass.c
ttysize.ll: ttysize.c
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  ttysize.c
term.ll: term.c
	$(CC) -c -I $(KLEE) -I ../include $(CFLAGS)  term.c


clean:
	rm -f $(OBJ) sudo.bc
