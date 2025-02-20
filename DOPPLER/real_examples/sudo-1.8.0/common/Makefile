#
# Copyright (c) 2011 Todd C. Miller <Todd.Miller@courtesan.com>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# common/Makefile.  Generated from Makefile.in by configure.
#

#### Start of system configuration section. ####

srcdir = .
devdir = $(srcdir)
top_builddir = ..
top_srcdir = ..
incdir = $(top_srcdir)/include

# Compiler & tools to use
CC = gcc
LIBTOOL = $(SHELL) $(top_builddir)/libtool

# C preprocessor flags
CPPFLAGS = -I. -I$(top_builddir) -I$(incdir) 

# Usually -O and/or -g
CFLAGS = -O2

# OS dependent defines
DEFS =  -D_GNU_SOURCE

#### End of system configuration section. ####

SHELL = /bin/bash

LTOBJS = alloc.lo atobool.lo fileops.lo fmt_string.lo \
	 lbuf.lo list.lo term.lo zero_bytes.lo 

all: libcommon.la

Makefile: $(srcdir)/Makefile.in
	(cd $(top_builddir) && ./config.status --file common/Makefile)

.SUFFIXES: .c .h .lo

.c.lo:
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $<

libcommon.la: $(LTOBJS)
	$(LIBTOOL) --mode=link $(CC) -o $@ $(LTOBJS) -no-install

# Dependencies
aix.lo: $(srcdir)/aix.c $(incdir)/missing.h $(incdir)/alloc.h $(incdir)/error.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/aix.c
alloc.lo: $(srcdir)/alloc.c $(incdir)/missing.h $(incdir)/alloc.h $(incdir)/error.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/alloc.c
atobool.lo: $(srcdir)/atobool.c $(incdir)/missing.h $(incdir)/missing.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/atobool.c
fileops.lo: $(srcdir)/fileops.c $(incdir)/fileops.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/fileops.c
fmt_string.lo: $(srcdir)/fmt_string.c $(incdir)/missing.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/fmt_string.c
lbuf.lo: $(srcdir)/lbuf.c $(incdir)/missing.h $(incdir)/alloc.h $(incdir)/error.h $(incdir)/missing.h $(incdir)/lbuf.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/lbuf.c
list.lo: $(srcdir)/list.c $(incdir)/missing.h $(incdir)/list.h $(incdir)/error.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/list.c
term.lo: $(srcdir)/term.c $(incdir)/missing.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/term.c
zero_bytes.lo: $(srcdir)/zero_bytes.c $(incdir)/missing.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/zero_bytes.c

install:

install-dirs:

install-binaries:

install-includes:

install-doc:

install-plugin:

uninstall:

check:

clean:
	-$(LIBTOOL) --mode=clean rm -f *.lo *.o *.la *.a stamp-* core *.core core.*

mostlyclean: clean

distclean: clean
	-rm -rf Makefile .libs

clobber: distclean

realclean: distclean
	rm -f TAGS tags

cleandir: realclean
