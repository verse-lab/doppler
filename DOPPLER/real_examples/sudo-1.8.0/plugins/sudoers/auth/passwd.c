/*
 * Copyright (c) 1999-2005, 2010 Todd C. Miller <Todd.Miller@courtesan.com>
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
 *
 * Sponsored in part by the Defense Advanced Research Projects
 * Agency (DARPA) and Air Force Research Laboratory, Air Force
 * Materiel Command, USAF, under agreement number F39502-99-1-0512.
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
# include <string.h>
#endif /* HAVE_STRING_H */
#ifdef HAVE_STRINGS_H
# include <strings.h>
#endif /* HAVE_STRINGS_H */
#ifdef HAVE_UNISTD_H
# include <unistd.h>
#endif /* HAVE_UNISTD_H */
#include <pwd.h>

#include "sudoers.h"
#include "sudo_auth.h"

#define DESLEN			13
#define HAS_AGEINFO(p, l)	(l == 18 && p[DESLEN] == ',')

int
passwd_init(struct passwd *pw, char **promptp, sudo_auth *auth)
{
#ifdef HAVE_SKEYACCESS
    if (skeyaccess(pw, user_tty, NULL, NULL) == 0)
	return AUTH_FAILURE;
#endif
    sudo_setspent();
    auth->data = sudo_getepw(pw);
    sudo_endspent();
    return AUTH_SUCCESS;
}

int
passwd_verify(struct passwd *pw, char *pass, sudo_auth *auth)
{
    char sav, *epass;
    char *pw_epasswd = auth->data;
    size_t pw_len;
    int error;

    pw_len = strlen(pw_epasswd);

#ifdef HAVE_GETAUTHUID
    /* Ultrix shadow passwords may use crypt16() */
    error = strcmp(pw_epasswd, (char *) crypt16(pass, pw_epasswd));
    if (!error)
	return AUTH_SUCCESS;
#endif /* HAVE_GETAUTHUID */

    /*
     * Truncate to 8 chars if standard DES since not all crypt()'s do this.
     * If this turns out not to be safe we will have to use OS #ifdef's (sigh).
     */
    sav = pass[8];
    if (pw_len == DESLEN || HAS_AGEINFO(pw_epasswd, pw_len))
	pass[8] = '\0';

    /*
     * Normal UN*X password check.
     * HP-UX may add aging info (separated by a ',') at the end so
     * only compare the first DESLEN characters in that case.
     */
    epass = (char *) crypt(pass, pw_epasswd);
    pass[8] = sav;
    if (HAS_AGEINFO(pw_epasswd, pw_len) && strlen(epass) == DESLEN)
	error = strncmp(pw_epasswd, epass, DESLEN);
    else
	error = strcmp(pw_epasswd, epass);

    return error ? AUTH_FAILURE : AUTH_SUCCESS;
}

int
passwd_cleanup(pw, auth)
    struct passwd *pw;
    sudo_auth *auth;
{
    char *pw_epasswd = auth->data;

    if (pw_epasswd != NULL) {
	zero_bytes(pw_epasswd, strlen(pw_epasswd));
	efree(pw_epasswd);
    }
    return AUTH_SUCCESS;
}
