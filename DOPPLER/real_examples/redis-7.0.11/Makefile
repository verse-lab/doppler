# Top level makefile, the real shit is at src/Makefile


default: all

.DEFAULT:
	cd src && CC=clang-13 $(MAKE) $@ MALLOC=libc libc=uclibc

install:
	cd src && $(MAKE) $@

.PHONY: install
