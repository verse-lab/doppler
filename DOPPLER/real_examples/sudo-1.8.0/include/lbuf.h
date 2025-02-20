/*
 * Copyright (c) 2007, 2010 Todd C. Miller <Todd.Miller@courtesan.com>
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
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef _SUDO_LBUF_H
#define _SUDO_LBUF_H

/*
 * Line buffer struct.
 */
struct lbuf {
    int (*output)(const char *);
    char *buf;
    const char *continuation;
    int indent;
    int len;
    int size;
    int cols;
};

void lbuf_init(struct lbuf *, int (*)(const char *), int, const char *, int);
void lbuf_destroy(struct lbuf *);
void lbuf_append(struct lbuf *, ...);
void lbuf_append_quoted(struct lbuf *, const char *, ...);
void lbuf_print(struct lbuf *);

#endif /* _SUDO_LBUF_H */
