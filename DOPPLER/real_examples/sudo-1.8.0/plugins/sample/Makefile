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
# plugins/sample/Makefile.  Generated from Makefile.in by configure.
#

#### Start of system configuration section. ####

srcdir = .
devdir = $(srcdir)
top_builddir = ../..
top_srcdir = ../..
incdir = $(top_srcdir)/include

# Compiler & tools to use
CC = gcc
LIBTOOL = $(SHELL) $(top_builddir)/libtool --tag=disable-static

# Our install program supports extra flags...
INSTALL = $(SHELL) $(top_srcdir)/install-sh -c

# Libraries
LIBS = $(LIBOBJDIR)/libreplace.la

# C preprocessor flags
CPPFLAGS = -I$(incdir) -I$(top_builddir) 

# Usually -O and/or -g
CFLAGS = -O2

# Flags to pass to the link stage
LDFLAGS =

# Where to install things...
prefix = /usr/local
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
sysconfdir = /etc
libexecdir = $(exec_prefix)/libexec
datarootdir = $(prefix)/share
localstatedir = ${prefix}/var
plugindir = /usr/local/libexec

# OS dependent defines
DEFS =  -D_GNU_SOURCE

#### End of system configuration section. ####

SHELL = /bin/bash

OBJS =	sample_plugin.lo

LIBOBJDIR = $(top_builddir)/compat/

VERSION = 1.8.0

all: sample_plugin.la

Makefile: $(srcdir)/Makefile.in
	(cd $(top_builddir) && ./config.status --file plugins/sample/Makefile)

.SUFFIXES: .o .c .h .lo

.c.lo:
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $<

sample_plugin.lo: $(srcdir)/sample_plugin.c
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/sample_plugin.c

sample_plugin.la: $(OBJS)
	$(LIBTOOL) --mode=link $(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS) -module -avoid-version -rpath $(plugindir)

install: install-dirs install-plugin

install-dirs:
	$(SHELL) $(top_srcdir)/mkinstalldirs $(DESTDIR)$(plugindir)

install-binaries:

install-includes:

install-doc:

install-plugin: install-dirs sample_plugin.la
	$(LIBTOOL) --mode=install --quiet $(INSTALL) -b~ sample_plugin.la $(DESDTDIR)/$(plugindir)

uninstall:
	-$(LIBTOOL) --mode=uninstall rm -f $(DESDTDIR)/$(plugindir)/sample_plugin.la

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
