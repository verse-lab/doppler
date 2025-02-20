#
# Copyright (c) 1996, 1998-2005, 2007-2011
#       Todd C. Miller <Todd.Miller@courtesan.com>
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
# Sponsored in part by the Defense Advanced Research Projects
# Agency (DARPA) and Air Force Research Laboratory, Air Force
# Materiel Command, USAF, under agreement number F39502-99-1-0512.
#
# plugins/sudoers/Makefile.  Generated from Makefile.in by configure.
#

#### Start of system configuration section. ####

srcdir = .
devdir = $(srcdir)
authdir = $(srcdir)/auth
top_builddir = ../..
top_srcdir = ../..
incdir = $(top_srcdir)/include
docdir = $(datarootdir)/doc/$(PACKAGE_TARNAME)
timedir = /var/lib/sudo

# Compiler & tools to use
CC = gcc
LIBTOOL = $(SHELL) $(top_builddir)/libtool
FLEX = flex
YACC = yacc

# Our install program supports extra flags...
INSTALL = $(SHELL) $(top_srcdir)/install-sh -c

# Libraries
LIBS = $(top_builddir)/common/libcommon.la $(top_builddir)/compat/libreplace.la
NET_LIBS = 
SUDOERS_LIBS =  -lpam   $(LIBS) $(NET_LIBS) -lz
REPLAY_LIBS =  -lz

# C preprocessor flags
CPPFLAGS = -I$(incdir) -I$(top_builddir) -I$(srcdir) -I$(top_srcdir) 

# Usually -O and/or -g
CFLAGS = -O2

# Flags to pass to the link stage
LDFLAGS =
SUDOERS_LDFLAGS = 

# Where to install things...
prefix = /usr/local
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
sysconfdir = /etc
libexecdir = $(exec_prefix)/libexec
datarootdir = $(prefix)/share
localstatedir = ${prefix}/var

# Directory in which to install the sudoers plugin
plugindir = /usr/local/libexec

# Directory in which to install the sudoers file
sudoersdir = $(sysconfdir)

# Directory in which to install sudoreplay.
replaydir = $(bindir)

# Directory in which to install visudo
visudodir = $(sbindir)

# User and group ids the installed files should be "owned" by
install_uid = 0
install_gid = 0

# User, group, and mode the sudoers file should be "owned" by (configure)
sudoers_uid = 0
sudoers_gid = 0
sudoers_mode = 0440

# Pass in paths and uid/gid + OS dependent defines
DEFS =  -D_GNU_SOURCE -D_PATH_SUDOERS=\"$(sudoersdir)/sudoers\" -DSUDOERS_UID=$(sudoers_uid) -DSUDOERS_GID=$(sudoers_gid) -DSUDOERS_MODE=$(sudoers_mode)

#### End of system configuration section. ####

SHELL = /bin/bash

PROGS = sudoers.la visudo sudoreplay testsudoers

TEST_PROGS = check_iolog_path check_fill

AUTH_OBJS = sudo_auth.lo getspwuid.lo passwd.lo

LIBSUDOERS_OBJS = alias.lo audit.lo defaults.lo gram.lo match.lo pwutil.lo \
		  timestr.lo toke.lo toke_util.lo redblack.lo

SUDOERS_OBJS = $(AUTH_OBJS) boottime.lo check.lo env.lo goodpath.lo \
	       group_plugin.lo find_path.lo interfaces.lo logging.lo \
	       parse.lo set_perms.lo sudoers.lo sudo_nss.lo iolog.lo \
	       iolog_path.lo  plugin_error.lo

VISUDO_OBJS = visudo.o goodpath.o find_path.o error.o

REPLAY_OBJS = getdate.o sudoreplay.o error.o

TEST_OBJS = interfaces.o testsudoers.o tsgetgrpw.o error.o group_plugin.o \
	    net_ifs.o

CHECK_IOLOG_PATH_OBJS = check_iolog_path.o error.o iolog_path.lo pwutil.lo \
			redblack.lo

VERSION = 1.8.0
PACKAGE_TARNAME = sudo

SUDODEP = $(srcdir)/sudoers.h $(srcdir)/defaults.h $(incdir)/error.h \
	  $(incdir)/list.h $(srcdir)/logging.h $(incdir)/missing.h \
	  $(srcdir)/sudo_nss.h $(devdir)/def_data.h \
	  $(top_builddir)/pathnames.h $(top_builddir)/config.h

AUTHDEP = $(SUDODEP) $(authdir)/sudo_auth.h

INSDEP = $(srcdir)/ins_2001.h $(srcdir)/ins_classic.h $(srcdir)/ins_csops.h \
	 $(srcdir)/ins_goons.h $(srcdir)/insults.h

all: $(PROGS)

.SUFFIXES: .o .c .h .l .y .lo

.c.o:
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $<

.c.lo:
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $<

# Prevent default rules from building .c files from .l and .y files
.l.c:

.y.c:

Makefile: $(srcdir)/Makefile.in
	(cd $(top_builddir) && ./config.status --file plugins/sudoers/Makefile)

libsudoers.la: $(LIBSUDOERS_OBJS)
	$(LIBTOOL) --mode=link $(CC) -o $@ $(LIBSUDOERS_OBJS) -no-install

sudoers.la: $(SUDOERS_OBJS) libsudoers.la
	$(LIBTOOL) --tag=disable-static --mode=link $(CC) $(SUDOERS_LDFLAGS) -o $@ $(SUDOERS_OBJS) libsudoers.la $(SUDOERS_LIBS) -module -avoid-version -rpath $(plugindir)

visudo: libsudoers.la $(VISUDO_OBJS) $(LIBS)
	$(LIBTOOL) --mode=link $(CC) -o $@ $(VISUDO_OBJS) $(LDFLAGS) libsudoers.la $(LIBS) $(NET_LIBS)

sudoreplay: $(REPLAY_OBJS) $(LIBS)
	$(LIBTOOL) --mode=link $(CC) -o $@ $(REPLAY_OBJS) $(LDFLAGS) timestr.lo $(REPLAY_LIBS) $(LIBS)

testsudoers: libsudoers.la $(TEST_OBJS) $(LIBS)
	$(LIBTOOL) --mode=link $(CC) -o $@ $(TEST_OBJS) $(LDFLAGS) libsudoers.la $(LIBS) $(NET_LIBS) 

check_iolog_path: $(CHECK_IOLOG_PATH_OBJS) $(LIBS)
	$(LIBTOOL) --mode=link $(CC) -o $@ $(CHECK_IOLOG_PATH_OBJS) $(LDFLAGS) $(LIBS)

check_fill: check_fill.o toke_util.lo error.o $(LIBS)
	$(LIBTOOL) --mode=link $(CC) -o $@ check_fill.o toke_util.lo error.o $(LDFLAGS) $(LIBS)

# Uncomment the following if you want "make distclean" to clean the parser
#GENERATED = gram.h gram.c toke.c def_data.c def_data.h getdate.c

# Uncomment the lines before -@true if you intend to modify gram.y
$(devdir)/gram.c $(devdir)/gram.h: $(srcdir)/gram.y
#	$(YACC) -d $(srcdir)/gram.y
#	echo "#include <config.h>" > $(devdir)/gram.c
#	cat y.tab.c >> $(devdir)/gram.c
#	rm -f y.tab.c
#	mv -f y.tab.h $(devdir)/gram.h
	-@true

# Uncomment the lines before -@true if you intend to modify toke.l
$(devdir)/toke.c: $(srcdir)/toke.l
#	$(FLEX) $(srcdir)/toke.l
#	echo "#include <config.h>" > $(devdir)/toke.c
#	cat lex.yy.c >> $(devdir)/toke.c
#	rm -f lex.yy.c
	-@true

# Uncomment the lines before -@true if you intend to modify getdate.y
$(devdir)/getdate.c: $(srcdir)/getdate.y
#	echo "expect 10 shift/reduce conflicts"
#	$(YACC) $(srcdir)/getdate.y
#	echo "#include <config.h>" > $(devdir)/getdate.c
#	cat y.tab.c >> $(devdir)/getdate.c
#	rm -f y.tab.c
	-@true

# Uncomment the following if you intend to modify def_data.in
#$(devdir)/def_data.c $(devdir)/def_data.h: $(srcdir)/def_data.in
#	perl $(srcdir)/mkdefaults -o $(devdir)/def_data $(srcdir)/def_data.in

sudoers: $(srcdir)/sudoers.in
	(cd $(top_builddir) && $(SHELL) config.status --file=plugins/sudoers/$@)

# Sudoers dependencies
alias.lo: $(srcdir)/alias.c $(SUDODEP) $(srcdir)/parse.h $(incdir)/list.h $(srcdir)/redblack.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/alias.c
audit.lo: $(srcdir)/audit.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/audit.c
bsm_audit.lo: $(srcdir)/bsm_audit.c $(SUDODEP) $(srcdir)/bsm_audit.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/bsm_audit.c
boottime.lo: $(srcdir)/boottime.c $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/boottime.c
check.lo: $(srcdir)/check.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/check.c
defaults.lo: $(srcdir)/defaults.c $(SUDODEP) $(devdir)/def_data.c $(authdir)/sudo_auth.h $(devdir)/gram.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/defaults.c
env.lo: $(srcdir)/env.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/env.c
find_path.lo: $(srcdir)/find_path.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/find_path.c
getspwuid.lo: $(srcdir)/getspwuid.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/getspwuid.c
goodpath.lo: $(srcdir)/goodpath.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/goodpath.c
gram.lo: $(devdir)/gram.c $(SUDODEP) $(srcdir)/parse.h $(incdir)/list.h $(devdir)/gram.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(devdir)/gram.c
group_plugin.lo: $(srcdir)/group_plugin.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/group_plugin.c
interfaces.lo: $(srcdir)/interfaces.c $(SUDODEP) $(srcdir)/interfaces.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/interfaces.c
iolog.lo: $(srcdir)/iolog.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/iolog.c
iolog_path.lo: $(srcdir)/iolog_path.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/iolog_path.c
ldap.lo: $(srcdir)/ldap.c $(SUDODEP) $(srcdir)/parse.h $(incdir)/list.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/ldap.c
linux_audit.lo: $(srcdir)/linux_audit.c $(SUDODEP) $(srcdir)/linux_audit.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/linux_audit.c
logging.lo: $(srcdir)/logging.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/logging.c
match.lo: $(srcdir)/match.c $(SUDODEP) $(srcdir)/parse.h $(incdir)/list.h $(srcdir)/interfaces.h $(devdir)/gram.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/match.c
parse.lo: $(srcdir)/parse.c $(SUDODEP) $(srcdir)/parse.h $(incdir)/list.h $(devdir)/gram.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/parse.c
pwutil.lo: $(srcdir)/pwutil.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/pwutil.c
redblack.lo: $(srcdir)/redblack.c $(SUDODEP) $(srcdir)/redblack.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/redblack.c
set_perms.lo: $(srcdir)/set_perms.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/set_perms.c
sudo_nss.lo: $(srcdir)/sudo_nss.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/sudo_nss.c
sudoers.lo: $(srcdir)/sudoers.c $(SUDODEP) $(srcdir)/interfaces.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/sudoers.c
timestr.lo: $(srcdir)/timestr.c $(incdir)/missing.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/timestr.c
toke.lo: $(devdir)/toke.c $(SUDODEP) $(srcdir)/parse.h $(incdir)/list.h $(srcdir)/toke.h $(devdir)/gram.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(devdir)/toke.c
toke_util.lo: $(devdir)/toke_util.c $(SUDODEP) $(srcdir)/parse.h $(srcdir)/toke.h $(devdir)/gram.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(devdir)/toke_util.c
tsgetgrpw.lo: $(srcdir)/tsgetgrpw.c $(SUDODEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/tsgetgrpw.c
plugin_error.lo: $(srcdir)/plugin_error.c $(incdir)/error.h $(incdir)/missing.h $(top_builddir)/config.h
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/plugin_error.c

# Auth dependencies
sudo_auth.lo: $(authdir)/sudo_auth.c $(AUTHDEP) $(INSDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/sudo_auth.c
afs.lo: $(authdir)/afs.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/afs.c
aix_auth.lo: $(authdir)/aix_auth.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/aix_auth.c
bsdauth.lo: $(authdir)/bsdauth.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/bsdauth.c
dce.lo: $(authdir)/dce.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/dce.c
fwtk.lo: $(authdir)/fwtk.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/fwtk.c
kerb4.lo: $(authdir)/kerb4.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/kerb4.c
kerb5.lo: $(authdir)/kerb5.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/kerb5.c
pam.lo: $(authdir)/pam.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/pam.c
passwd.lo: $(authdir)/passwd.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/passwd.c
rfc1938.lo: $(authdir)/rfc1938.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/rfc1938.c
secureware.lo: $(authdir)/secureware.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/secureware.c
securid.lo: $(authdir)/securid.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/securid.c
securid5.lo: $(authdir)/securid5.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/securid5.c
sia.lo: $(authdir)/sia.c $(AUTHDEP)
	$(LIBTOOL) --mode=compile $(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(authdir)/sia.c

# Command dependencies (sudoreplay, testsudoers, visudo)
check_iolog_path.o: $(srcdir)/regress/iolog_path/check_iolog_path.c $(SUDODEP)
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/regress/iolog_path/check_iolog_path.c
error.o: $(top_srcdir)/src/error.c $(incdir)/error.h $(incdir)/missing.h $(top_builddir)/config.h
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(top_srcdir)/src/error.c
find_path.o: find_path.lo
getdate.o: $(devdir)/getdate.c $(incdir)/missing.h $(top_builddir)/config.h
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(devdir)/getdate.c
goodpath.o: goodpath.lo
interfaces.o: interfaces.lo
net_ifs.o: $(top_srcdir)/src/net_ifs.c $(SUDODEP)
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(top_srcdir)/src/net_ifs.c
sudoreplay.o: $(srcdir)/sudoreplay.c $(incdir)/alloc.h $(incdir)/missing.h $(incdir)/error.h $(incdir)/missing.h $(top_builddir)/config.h
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/sudoreplay.c
check_fill.o: $(srcdir)/regress/parser/check_fill.c
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/regress/parser/check_fill.c
testsudoers.o: $(srcdir)/testsudoers.c $(SUDODEP) $(srcdir)/parse.h $(incdir)/list.h $(srcdir)/interfaces.h $(devdir)/gram.h
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/testsudoers.c
tsgetgrpw.o: $(srcdir)/tsgetgrpw.c $(SUDODEP)
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/tsgetgrpw.c
visudo.o: $(srcdir)/visudo.c $(SUDODEP) $(devdir)/gram.h
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $(DEFS) $(srcdir)/visudo.c

install: install-dirs install-plugin install-binaries install-sudoers install-doc

install-dirs:
	$(SHELL) $(top_srcdir)/mkinstalldirs $(DESTDIR)$(plugindir) \
	    $(DESTDIR)$(visudodir) $(DESTDIR)$(replaydir) \
	    $(DESTDIR)$(sudoersdir) $(DESTDIR)$(docdir)
	$(SHELL) $(top_srcdir)/mkinstalldirs -m 0700 $(DESTDIR)$(timedir)

install-binaries: visudo sudoreplay install-dirs
	$(INSTALL) -b~ -O $(install_uid) -G $(install_gid) -M 0111 sudoreplay $(DESTDIR)$(replaydir)/sudoreplay
	$(INSTALL) -b~ -O $(install_uid) -G $(install_gid) -M 0111 visudo $(DESTDIR)$(visudodir)/visudo

install-includes:

install-doc:
	#$(INSTALL) -O $(install_uid) -G $(install_gid) -M 0555 $(srcdir)/sudoers2ldif $(DESTDIR)$(docdir)

install-plugin: sudoers.la install-dirs
	$(LIBTOOL) --mode=install --quiet $(INSTALL) -b~ sudoers.la $(DESTDIR)$(plugindir)

install-sudoers: install-dirs
	$(INSTALL) -d -O $(sudoers_uid) -G $(sudoers_gid) -M 0750 \
	    $(DESTDIR)$(sudoersdir)/sudoers.d
	test -f $(DESTDIR)$(sudoersdir)/sudoers || \
	    $(INSTALL) -O $(sudoers_uid) -G $(sudoers_gid) -M $(sudoers_mode) \
		sudoers $(DESTDIR)$(sudoersdir)/sudoers

uninstall:
	-$(LIBTOOL) --mode=uninstall rm -f $(DESTDIR)$(plugindir)/sudoers.la
	-rm -f $(DESTDIR)$(replaydir)/sudoreplay
	-rm -f $(DESTDIR)$(visudodir)/visudo
	-cmp $(DESTDIR)$(sudoersdir)/sudoers $(srcdir)/sudoers >/dev/null && \
	    rm -f $(DESTDIR)$(sudoersdir)/sudoers

check: $(TEST_PROGS) visudo testsudoers
	@./check_iolog_path $(srcdir)/regress/iolog_path/data
	@./check_fill
	@for t in $(srcdir)/regress/*/test*.sh; do SRCDIR=$(srcdir) $(SHELL) $$t; done

clean:
	-$(LIBTOOL) --mode=clean rm -f $(PROGS) *.lo *.o *.la *.a stamp-* core *.core core.* *.out

mostlyclean: clean

distclean: clean
	-rm -rf Makefile sudoers sudoers.lo .libs $(LINKS)

clobber: distclean

realclean: distclean
	rm -f TAGS tags

cleandir: realclean
