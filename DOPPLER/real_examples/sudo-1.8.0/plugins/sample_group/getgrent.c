/*
 * Copyright (c) 2005, 2008, 2010 Todd C. Miller <Todd.Miller@courtesan.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

/*
 * Trivial replacements for the libc getgr{uid,nam}() routines.
 */

#include <config.h>

#include <sys/types.h>
#include <sys/param.h>
#include <stdio.h>
#ifdef STDC_HEADERS
# include <stdlib.h>
# include <stddef.h>
#else
# ifdef HAVE_STDLIB_H
#  include <stdlib.h>
# endif
#endif /* STDC_HEADERS */
#ifdef HAVE_STRING_H
# if defined(HAVE_MEMORY_H) && !defined(STDC_HEADERS)
#  include <memory.h>
# endif
# include <string.h>
#endif /* HAVE_STRING_H */
#ifdef HAVE_STRINGS_H
# include <strings.h>
#endif /* HAVE_STRINGS_H */
#include <fcntl.h>
#include <limits.h>
#include <pwd.h>
#include <grp.h>

#include "missing.h"

#ifndef LINE_MAX
# define LINE_MAX 2048
#endif

#undef GRMEM_MAX
#define GRMEM_MAX 200

static FILE *grf;
static const char *grfile = "/etc/group";
static int gr_stayopen;

void mysetgrfile(const char *);
void mysetgrent(void);
void myendgrent(void);
struct group *mygetgrent(void);
struct group *mygetgrnam(const char *);
struct group *mygetgrgid(gid_t);

void
mysetgrfile(const char *file)
{
    grfile = file;
    if (grf != NULL)
	myendgrent();
}

void
mysetgrent(void)
{
    if (grf == NULL) {
	grf = fopen(grfile, "r");
	if (grf != NULL)
	    fcntl(fileno(grf), F_SETFD, FD_CLOEXEC);
    } else {
	rewind(grf);
    }
    gr_stayopen = 1;
}

void
myendgrent(void)
{
    if (grf != NULL) {
	fclose(grf);
	grf = NULL;
    }
    gr_stayopen = 0;
}

struct group *
mygetgrent(void)
{
    static struct group gr;
    static char grbuf[LINE_MAX], *gr_mem[GRMEM_MAX+1];
    size_t len;
    char *cp, *colon;
    int n;

    if ((colon = fgets(grbuf, sizeof(grbuf), grf)) == NULL)
	return NULL;

    memset(&gr, 0, sizeof(gr));
    if ((colon = strchr(cp = colon, ':')) == NULL)
	return NULL;
    *colon++ = '\0';
    gr.gr_name = cp;
    if ((colon = strchr(cp = colon, ':')) == NULL)
	return NULL;
    *colon++ = '\0';
    gr.gr_passwd = cp;
    if ((colon = strchr(cp = colon, ':')) == NULL)
	return NULL;
    *colon++ = '\0';
    gr.gr_gid = atoi(cp);
    len = strlen(colon);
    if (len > 0 && colon[len - 1] == '\n')
	colon[len - 1] = '\0';
    if (*colon != '\0') {
	gr.gr_mem = gr_mem;
	cp = strtok(colon, ",");
	for (n = 0; cp != NULL && n < GRMEM_MAX; n++) {
	    gr.gr_mem[n] = cp;
	    cp = strtok(NULL, ",");
	}
	gr.gr_mem[n++] = NULL;
    } else
	gr.gr_mem = NULL;
    return &gr;
}

struct group *
mygetgrnam(const char *name)
{
    struct group *gr;

    if (grf == NULL) {
	if ((grf = fopen(grfile, "r")) == NULL)
	    return NULL;
	fcntl(fileno(grf), F_SETFD, FD_CLOEXEC);
    } else {
	rewind(grf);
    }
    while ((gr = mygetgrent()) != NULL) {
	if (strcmp(gr->gr_name, name) == 0)
	    break;
    }
    if (!gr_stayopen) {
	fclose(grf);
	grf = NULL;
    }
    return gr;
}

struct group *
mygetgrgid(gid_t gid)
{
    struct group *gr;

    if (grf == NULL) {
	if ((grf = fopen(grfile, "r")) == NULL)
	    return NULL;
	fcntl(fileno(grf), F_SETFD, FD_CLOEXEC);
    } else {
	rewind(grf);
    }
    while ((gr = mygetgrent()) != NULL) {
	if (gr->gr_gid == gid)
	    break;
    }
    if (!gr_stayopen) {
	fclose(grf);
	grf = NULL;
    }
    return gr;
}
