/*
 * Copyright (c) 1996, 1998-2005, 2010
 *	Todd C. Miller <Todd.Miller@courtesan.com>
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
#include <sys/stat.h>
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

#include "sudoers.h"

/*
 * This function finds the full pathname for a command and
 * stores it in a statically allocated array, filling in a pointer
 * to the array.  Returns FOUND if the command was found, NOT_FOUND
 * if it was not found, or NOT_FOUND_DOT if it would have been found
 * but it is in '.' and IGNORE_DOT is set.
 */
int
find_path(char *infile, char **outfile, struct stat *sbp, char *path,
    int ignore_dot)
{
    static char command[PATH_MAX]; /* qualified filename */
    char *n;			/* for traversing path */
    char *origpath;		/* so we can free path later */
    char *result = NULL;	/* result of path/file lookup */
    int checkdot = 0;		/* check current dir? */
    int len;			/* length parameter */

    if (strlen(infile) >= PATH_MAX)
	errorx(1, "%s: File name too long", infile);

    /*
     * If we were given a fully qualified or relative path
     * there is no need to look at $PATH.
     */
    if (strchr(infile, '/')) {
	strlcpy(command, infile, sizeof(command));	/* paranoia */
	if (sudo_goodpath(command, sbp)) {
	    *outfile = command;
	    return FOUND;
	} else
	    return NOT_FOUND;
    }

    if (path == NULL)
	return NOT_FOUND;
    path = estrdup(path);
    origpath = path;

    do {
	if ((n = strchr(path, ':')))
	    *n = '\0';

	/*
	 * Search current dir last if it is in PATH This will miss sneaky
	 * things like using './' or './/'
	 */
	if (*path == '\0' || (*path == '.' && *(path + 1) == '\0')) {
	    checkdot = 1;
	    path = n + 1;
	    continue;
	}

	/*
	 * Resolve the path and exit the loop if found.
	 */
	len = snprintf(command, sizeof(command), "%s/%s", path, infile);
	if (len <= 0 || len >= sizeof(command))
	    errorx(1, "%s: File name too long", infile);
	if ((result = sudo_goodpath(command, sbp)))
	    break;

	path = n + 1;

    } while (n);
    efree(origpath);

    /*
     * Check current dir if dot was in the PATH
     */
    if (!result && checkdot) {
	len = snprintf(command, sizeof(command), "./%s", infile);
	if (len <= 0 || len >= sizeof(command))
	    errorx(1, "%s: File name too long", infile);
	result = sudo_goodpath(command, sbp);
	if (result && ignore_dot)
	    return NOT_FOUND_DOT;
    }

    if (result) {
	*outfile = result;
	return FOUND;
    } else
	return NOT_FOUND;
}
