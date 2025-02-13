/*
 * ProFTPD - FTP server daemon
 * Copyright (c) 1997, 1998 Public Flood Software
 * Copyright (c) 1999, 2000 MacGyver aka Habeeb J. Dihu <macgyver@tos.net>
 * Copyright (c) 2001, 2002, 2003 The ProFTPD Project team
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307, USA.
 *
 * As a special exemption, Public Flood Software/MacGyver aka Habeeb J. Dihu
 * and other respective copyright holders give permission to link this program
 * with OpenSSL, and distribute the resulting executable, without including
 * the source code for OpenSSL in the source distribution.
 */

/*
 * House initialization and main program loop
 * $Id: main.c,v 1.243 2004/08/07 22:22:42 castaglia Exp $
 */

// #include "conf.h"

#include "stdlib.h"

#include <signal.h>
#include <sys/resource.h>

#include <klee/klee.h>

#include <ctype.h>

int my_strncasecmp(const char *s1, const char *s2, size_t n)
{
    if (n == 0) return 0;

    while (n-- != 0 && tolower(*s1) == tolower(*s2)) {
        if (n == 0 || *s1 == '\0' || *s2 == '\0')
            break;
        s1++;
        s2++;
    }

    return tolower(*(const unsigned char *)s1)
           - tolower(*(const unsigned char *)s2);
}

#ifdef HAVE_GETOPT_H
# include <getopt.h>
#endif

#ifdef HAVE_LIBUTIL_H
# include <libutil.h>
#endif /* HAVE_LIBUTIL_H */

#if PF_ARGV_TYPE == PF_ARGV_PSTAT
# ifdef HAVE_SYS_PSTAT_H
#  include <sys/pstat.h>
# else
#  undef PF_ARGV_TYPE
#  define PF_ARGV_TYPE PF_ARGV_WRITEABLE
# endif /* HAVE_SYS_PSTAT_H */
#endif /* PF_ARGV_PSTAT */

#if PF_ARGV_TYPE == PF_ARGV_PSSTRINGS
# ifndef HAVE_SYS_EXEC_H
#  undef PF_ARGV_TYPE
#  define PF_ARGV_TYPE PF_ARGV_WRITEABLE
# else
#  include <machine/vmparam.h>
#  include <sys/exec.h>
# endif /* HAVE_SYS_EXEC_H */
#endif /* PF_ARGV_PSSTRINGS */

#ifdef HAVE_REGEX_H
# include <regex.h>
#endif

#ifdef HAVE_REGEXP_H
# include <regexp.h>
#endif /* HAVE_REGEXP_H */

// #include "privs.h"

#include <sets.h>
#include <bits/types/FILE.h>

#define PR_TUNABLE_BUFFER_SIZE 1024

#ifndef TRUE
# define TRUE				1
#endif

#ifndef FALSE
# define FALSE				0
#endif

int TimeoutIdle = 600;
#define PR_STR_FL_PRESERVE_COMMENTS		0x0001
#define PR_STR_FL_PRESERVE_WHITESPACE		0x0002

#define TIMER_IDLE		2
#define CONF_PARAM		(1 << 15) /* config/args pair */
#define R_220	"220"		/* Service ready for new user. */
#define	R_500	"500"		/* Syntax error, command unrecognized */
#define PROFTPD_VERSION_TEXT		"1.2.10"
#define C_SITE	"SITE"		/* Site specific command */

#define PR_LOG_EMERG            0       /* system is unusable */
#define PR_LOG_ALERT            1       /* action must be taken immediately */
#define PR_LOG_CRIT             2       /* critical conditions */
#define PR_LOG_ERR              3       /* error conditions */
#define PR_LOG_WARNING          4       /* warning conditions */
#define PR_LOG_NOTICE           5       /* normal but significant condition */
#define PR_LOG_INFO             6       /* informational */
#define PR_LOG_DEBUG            7       /* debug-level messages */

#ifndef EINTR
#define EINTR 9959
#endif

/* Command handler types for command table */
#define PRE_CMD				1
#define CMD				2
#define POST_CMD			3
#define POST_CMD_ERR			4
#define LOG_CMD				5
#define LOG_CMD_ERR			6
#define HOOK				7

#ifdef NEED_PERSISTENT_PASSWD
unsigned char persistent_passwd = TRUE;
#else
unsigned char persistent_passwd = FALSE;
#endif /* NEED_PERSISTENT_PASSWD */

#define SF_XFER			0x0004	/* Transfer in progress */
#define R_421	"421"		/* Service not available, closing control connection (service is about to be shutdown) */

/* Timers */
#define TIMER_LOGIN		1
#define TIMER_IDLE		2
#define TIMER_NOXFER		3
#define TIMER_STALLED		4
#define TIMER_SESSION		5
#define ANY_MODULE			((module*)0xffffffff)

#ifndef _VA_LIST
typedef __builtin_va_list va_list;
#define _VA_LIST
#endif
#define va_start(ap, param) __builtin_va_start(ap, param)
#define va_end(ap)          __builtin_va_end(ap)
#define va_arg(ap, type)    __builtin_va_arg(ap, type)

#define DEBUG10		10
#define DEBUG9		9
#define DEBUG8		8
#define DEBUG7		7
#define DEBUG6		6
#define DEBUG5		5
#define DEBUG4		4
#define	DEBUG3		3
#define DEBUG2		2
#define DEBUG1		1
#define DEBUG0		0

# define PR_ROOT_UID    0
# define PR_ROOT_GID    0

/* Standard streams.  */
extern FILE *stdin;		/* Standard input stream.  */
extern FILE *stdout;		/* Standard output stream.  */
extern FILE *stderr;		/* Standard error output stream.  */
/* C89/C99 say they're macros.  Make them happy.  */
#define stdin stdin
#define stdout stdout
#define stderr stderr

extern int *__errno_location (void) __THROW __attribute_const__;
# define errno (*__errno_location ())

#define PR_STATUS          		"(stable)"
#define PR_SCOREBOARD_VERSION        		0x01040002
#define BUILD_STAMP "Sun 24 Mar 2024 08:06:26 PM +08"

#define PR_NETIO_STRM_CTRL		0x00010

#ifndef STDIN_FILENO
#define STDIN_FILENO 	0
#endif /* STDIN_FILENO */

#ifndef STDOUT_FILENO
#define STDOUT_FILENO 	1
#endif /* STDOUT_FILENO */

#define O_ACCMODE	   0003
#define O_RDONLY	     00
#define O_WRONLY	     01
#define O_RDWR		     02

#define PR_SCORE_ERR_BAD_MAGIC		-2
#define PR_SCORE_ERR_OLDER_VERSION	-3
#define PR_SCORE_ERR_NEWER_VERSION	-4

typedef struct pool pool;
struct pool {
  union block_hdr *first;
  union block_hdr *last;
  struct cleanup *cleanups;
  struct pool *sub_pools;
  struct pool *sub_next;
  struct pool *sub_prev;
  struct pool *parent;
  char *free_first_avail;
  const char *tag;
};

typedef struct {

  /* Pointer to the buffer memory. */
  char *buf;

  /* Total length of the buffer. */
  unsigned long buflen;

  /* Pointer to the current byte in the buffer. */
  char *current;

  /* Number of bytes left in the buffer. */
  int remaining;

} pr_buffer_t;

typedef struct {

  /* Memory pool for this object. */
  pool *strm_pool;

  /* Stream type */
  int strm_type;

  /* File descriptor for this I/O stream. */
  int strm_fd;

  /* I/O mode: PR_NETIO_IO_RD or PR_NETIO_IO_WR.  Patterned after
   * open(2).
   */
  int strm_mode;

  /* Poll interval for this stream. */
  unsigned int strm_interval;

  /* Internal use. */
  volatile unsigned long strm_flags;

  /* Buffer. */
  pr_buffer_t *strm_buf;

  /* Arbitrary data for outside use. */
  void *strm_data;

  /* errno, if applicable. */
  int strm_errno;

} pr_netio_stream_t;

typedef struct {
  int na_family;

  /* Note: this assumes that DNS names have a maximum size of
   * 256 characters.
   */
  char na_dnsstr[256];
  int na_have_dnsstr;

  char na_ipstr[46];
  int na_have_ipstr;

  /* Note: at some point, this union might/should be replaced with
   * struct sockaddr_storage.  Why?  The sockaddr_storage struct is
   * better defined to be aligned on OS/arch boundaries, for more efficient
   * allocation/access.
   */

  // union {
  //   struct sockaddr_in v4;
  //   struct sockaddr_in6 v6;
  // } na_addr;

} pr_netaddr_t;

/* connection structure */
typedef struct conn_struc {
  struct conn_struc *next;
  pool *pool;
  int mode;				/* Current connection mode */
  int listen_fd;			/* Listening file descriptor */
  int rcvbuf,sndbuf;			/* Socket recv and send sizes */

  int xerrno;				/* Set to error if mode == CM_ERROR */

  int rfd,wfd;				/* Read and write fds */
  pr_netio_stream_t *instrm, *outstrm;	/* Input/Output streams */

  /* Remote address of the connection. */
  pr_netaddr_t *remote_addr;

  /* Remote port of the connection. */
  int remote_port;

  /* Remote FQDN of the connection. */
  const char *remote_name;

  /* Local address of the connection. */
  pr_netaddr_t *local_addr;

  /* Local port of the connection. */
  int local_port;

} conn_t;

typedef struct server_struc {
  struct server_struc *next, *prev;

  pool *pool;			/* Memory pool for this server */
  xaset_t *set;			/* Set holding all servers */

  /* The label/name for this server configuration. */
  const char *ServerName;

  /* The address for this server configuration. */
  const char *ServerAddress;

  /* The fully qualified domain name for this server configuration. */
  const char *ServerFQDN;

  /* Port number to which to listen. A value of zero disables the server_rec.
   */
  unsigned int ServerPort;

  /* TCP settings: max segment size, receive/send buffer sizes.
   */
  int tcp_mss_len;

  int tcp_rcvbuf_len;
  unsigned char tcp_rcvbuf_override;

  int tcp_sndbuf_len;
  unsigned char tcp_sndbuf_override;

  /* Administrator name */
  char *ServerAdmin;

  /* Internal address of this server */
  pr_netaddr_t *addr;

  struct conn_struc *listen;

  /* Configuration details */
  xaset_t *conf;
  int config_type;

  /* Internal server ID, automatically assigned */
  unsigned int sid;

} server_rec;

typedef struct config_struc config_rec;

struct config_struc {
  struct config_struc *next,*prev;

  int config_type;
  pool *pool;			/* memory pool for this object */
  xaset_t *set;			/* The set we are stored in */
  char *name;
  int argc;
  void **argv;
  long overrides;		/* Override classes */
  long flags;			/* Flags */

  server_rec *server;		/* Server this config element is attached to */
  config_rec *parent;		/* Our parent configuration record */
  xaset_t *subset;		/* Sub-configuration */
};

typedef struct module_struc module;

struct module_struc {
  module *next,*prev;

  int api_version;			/* API version _not_ module version */
  char *name;				/* Module name */

  // conftable *conftable;			/* Configuration directive table */
  // cmdtable *cmdtable;			/* Command table */
  // authtable *authtable; 		/* Authentication handler table */

  int (*init)(void); 			/* Module initialization */
  int (*sess_init)(void);		/* Session initialization */

  char *module_version;			/* Module version */
  void *handle;				/* Module handle */

  /* Internal use; high number == higher priority. */
  int priority;
};

typedef struct privdata {
  char *tag;
  union {
    void *ptr_val;
    int int_val;
    long long_val;
    char *str_val;
  } value;

  module *m;
} privdata_t;

typedef struct cmd_struc {
  pool *pool;
  server_rec *server;
  config_rec *config;
  pool *tmp_pool;		/* Temporary pool which only exists
				 * while the cmd's handler is running
				 */
  int argc;

  char *arg;			/* entire argument (excluding command) */
  char **argv;
  char *group;			/* Command grouping */

  int  class;			/* The command class */
  int  stash_index;		/* hack to speed up symbol hashing in modules.c */
  privdata_t *private;		/* Private data for passing/retaining between handlers */
  array_header *privarr;	/* Internal use */
} cmd_rec;

server_rec *main_server = NULL; // TODO: how to initialize?

typedef struct pr_class_t {
  pool *cls_pool;
  char *cls_name;
  unsigned int cls_satisfy;
  array_header *cls_acls;

  struct pr_class_t *cls_next;
} pr_class_t;

typedef __uid_t uid_t;
typedef __gid_t gid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __time_t time_t;

typedef struct {
  pool *pool;

  volatile int sf_flags;		/* Session/State flags */
  volatile int sp_flags;		/* Session/Protection flags */

  pr_netaddr_t data_addr;		/* Remote data address */
  unsigned short data_port;		/* Remote data port */

  unsigned char ident_lookups;		/* Is RFC931 (ident) protocol used? */
  char *ident_user;			/* User identified by ident protocol */

  const char *auth_mech;		/* Name of the authentication
                                         * module/mechanism that successfully
                                         * authenticated the client
					 */

  const char *rfc2228_mech;		/* RFC2228 authentication mechanism
					 * used
					 */

  char cwd[1024];	/* Current working directory */
  char vwd[1024];	/* Current virtual working directory */

  struct config_struc *dir_config;	/* Closest matching configuration
                                         * for current operation
                                         */

  /* The uid/gids are manipulated by the PRIVS macros in
   * privs.h
   */

  int disable_id_switching;		/* Disable UID/GID switching */
  uid_t uid, ouid;                      /* Current and original UIDs */
  gid_t gid;                            /* Current GID */

  array_header *gids;
  array_header *groups;

  /* fsuid/fsgid are used for automagic chown after creation or upload.
   * They are initially -1, meaning no chown/chgrp.
   */
  uid_t fsuid;				/* Saved file UID */
  gid_t fsgid;				/* Saved file GID */

  char *user,*group;			/* Username/groupname after login */
  uid_t login_uid;                      /* UID after login, but before
                                         * session.uid is changed
                                         */
  gid_t login_gid;                      /* GID after login, but before
                                         * session.gid is changed
                                         */

  pr_class_t *class;			/* Session class */
  char *proc_prefix;			/* The "prefix" of our process name */

  int wtmp_log;				/* Are we logging to wtmp? */
  struct conn_struc *c;			/* Control connection */
  struct conn_struc *d;			/* Data connection */

  int hide_password;			/* Hide password in logs/ps listing */

  char *chroot_path;			/* Chroot directory */

  struct config_struc *anon_config;	/* Anonymous FTP configuration */
  char *anon_user;			/* E-mail address sent to us */

  char *curr_cmd;                       /* Current FTP command */
  int curr_phase;                       /* Current handler phase */

  off_t restart_pos;			/* Restart marked position */

  struct {
    struct pool *p;

    int xfer_type;     /* xfer session attributes, default/append/hidden */
    int direction;
    char *filename;			/* As shown to user */
    char *path;				/* As used in transfer */
    char *path_hidden;			/* As used in hidden stor */

    unsigned int bufsize,buflen;

    struct timeval start_time;		/* Time current transfer started */
    off_t file_size;			/* Total size of file (if known) */
    off_t total_bytes;			/* Total bytes transfered */

    char *bufstart,*buf;
  } xfer;

  /* Total number of bytes transfered in this session. */
  off_t total_bytes;

  /* Total number of files uploaded in this session. */
  unsigned int total_files_in;

  /* Total number of files downloaded in this session. */
  unsigned int total_files_out;

  /* Total number of files transfered (both uploaded and downloaded) in
   * this session.
   */
  unsigned int total_files_xfer;

} session_t;

int (*cmd_auth_chk)(cmd_rec *);

/* From modules/module_glue.c */
extern module *static_modules[];

/* From mod_core.c. */
struct rehash {
  struct rehash *next;

  void *data;
  void (*rehash)(void*);
};

unsigned long max_connects = 0UL;
unsigned int max_connect_interval = 1;

session_t session;

/* Is this daemon operating in standalone mode? */
static unsigned char is_standalone = FALSE;

/* Is this process the master standalone daemon process? */
unsigned char is_master = TRUE;

pid_t mpid = 0;				/* Master pid */
struct rehash *rehash_list = NULL;	/* Pre-rehash callbacks */

uid_t daemon_uid;
gid_t daemon_gid;
array_header *daemon_gids;

static time_t shut = 0, deny = 0, disc = 0;
static char shutmsg[81] = {'\0'};

static unsigned char have_dead_child = FALSE;

static char sbuf[PR_TUNABLE_BUFFER_SIZE] = {'\0'};

static char **Argv = NULL;
static char *LastArgv = NULL;
static const char *PidPath = "/usr/local/var/proftpd.pid";

/* From dirtree.c */
extern array_header *server_defines;

/* From mod_auth_unix.c */
extern unsigned char persistent_passwd;

/* From response.c */
// extern pr_response_t *resp_list, *resp_err_list;

static int nodaemon  = 0;
static int quiet     = 0;
static int shutdownp = 0;
static int syntax_check = 0;

/* Signal handling */
// static RETSIGTYPE sig_disconnect(int);
// static RETSIGTYPE sig_evnt(int);

volatile unsigned int recvd_signal_flags = 0;

/* Used to capture an "unknown" signal value that causes termination. */
static int term_signo = 0;

static const char *config_filename = "/usr/local/etc/proftpd.conf";

void set_auth_check(int (*chk)(cmd_rec*)) {
  cmd_auth_chk = chk;
}


char *sstrncpy(char *dest, const char *src, size_t n) {
  register char *d = dest;

  if (!dest)
    return NULL;

  if (src && *src) {
    for (; *src && n > 1; n--)
      *d++ = *src++;                      // Gadget
  }

  *d = '\0';

  return dest;
}

void *push_array(array_header *arr) {
  if (arr->nelts == arr->nalloc) {
    char *new_data = pcalloc(arr->pool, arr->nalloc * arr->elt_size * 2);

    memcpy(new_data, arr->elts, arr->nalloc * arr->elt_size);
    arr->elts = new_data;
    arr->nalloc *= 2;
  }

  ++arr->nelts;
  return ((char *)arr->elts) + (arr->elt_size * (arr->nelts - 1));
}

char *pstrdup(struct pool *p, const char *s) {
  char *res;
  size_t len;

  if (!s)
    return NULL;

  len = strlen(s) + 1;

  res = palloc(p, len);
  sstrncpy(res, s, len);
  return res;
}

char *pr_str_get_word(char **cp, int flags) {
  char *ret, *dst;
  char quote_mode = 0;

  if (!cp || !*cp || !**cp)
    return NULL;

  if (!(flags & PR_STR_FL_PRESERVE_WHITESPACE)) {
    while (**cp && isspace((int) **cp))
      (*cp)++;
  }

  if (!**cp)
    return NULL;

  ret = dst = *cp;

  if (!(flags & PR_STR_FL_PRESERVE_COMMENTS)) {
    /* Stop processing at start of an inline comment. */
    if (**cp == '#')
      return NULL;
  }

  if (**cp == '\"') {
    quote_mode++;
    (*cp)++;
  }

  while (**cp && (quote_mode ? (**cp != '\"') : !isspace((int) **cp))) {
    if (**cp == '\\' && quote_mode) {

      /* Escaped char */
      if (*((*cp)+1))
        *dst = *(++(*cp));
    }

    *dst++ = **cp;
    ++(*cp);
  }

  if (**cp)
    (*cp)++;
  *dst = '\0';

  return ret;
}

void *palloc(struct pool *p, int sz) {
  return NULL;
}

array_header *make_array(pool *p, int nelts, int elt_size) {
  array_header *res = (array_header *) palloc(p, sizeof(array_header));

  if (nelts < 1) nelts = 1;

  res->elts = pcalloc(p, nelts * elt_size);
  res->pool = p;
  res->elt_size = elt_size;
  res->nelts = 0;
  res->nalloc = nelts;

  return res;
}

void *pcalloc(struct pool *p, int sz) {
  void *res = palloc(p, sz);
  memset(res, '\0', sz);
  return res;
}

static cmd_rec *make_ftp_cmd(pool *p, char *buf, int flags) {
  char *cp = buf, *wrd;
  cmd_rec *cmd;
  pool *subpool;
  array_header *tarr;
  int str_flags = PR_STR_FL_PRESERVE_COMMENTS|flags;

  /* Be pedantic (and RFC-compliant) by not allowing leading whitespace
   * in an issued FTP command.  Will this cause troubles with many clients?
   */
  if (isspace((int) buf[0]))
    return NULL;

  /* Nothing there...bail out. */
  // wrd = pr_str_get_word(&cp, str_flags);
  if (wrd == NULL)
    return NULL;

  tarr = make_array(cmd->pool, 2, sizeof(char *));

  *((char **) push_array(tarr)) = pstrdup(cmd->pool, wrd);
  cmd->argc++;
  cmd->arg = pstrdup(cmd->pool, cp);

  while ((wrd = pr_str_get_word(&cp, str_flags)) != NULL) {
    *((char **) push_array(tarr)) = pstrdup(cmd->pool, wrd);
    cmd->argc++;
  }

  *((char **) push_array(tarr)) = NULL;
  cmd->argv = (char **) tarr->elts;

  return cmd;
}

char *sreplace(pool *p, char *s, ...) {
  va_list args;
  char *m,*r,*src = s,*cp;                              // gadget
  char **mptr,**rptr;                                   // gadget
  char *marr[33],*rarr[33];                             // gadget
  char buf[1024] = {'\0'}, *pbuf = NULL;                // gadget
//  klee_make_symbolic(&m, sizeof(m), "m");
//  klee_make_symbolic(&r, sizeof(r), "r");
//  klee_make_symbolic(&src, sizeof(src), "src");
//  klee_make_symbolic(&cp, sizeof(cp), "cp");
//  klee_make_symbolic(&mptr, sizeof(mptr), "mptr");
//  klee_make_symbolic(&rptr, sizeof(rptr), "rptr");
//  klee_make_symbolic(&marr, sizeof(marr), "marr");
//  klee_make_symbolic(&rarr, sizeof(rarr), "rarr");
//  klee_make_symbolic(&buf, sizeof(buf), "buf");

  int mlen = 0, rlen = 0;
  int blen, dyn = 1;

  cp = buf;
  *cp = '\0';

  memset(marr, '\0', sizeof(marr));
  memset(rarr, '\0', sizeof(rarr));
  blen = strlen(src) + 1;                                     // gadget

  va_start(args, s); 

  while ((m = va_arg(args, char *)) != NULL && mlen < 32) {
    if ((r = va_arg(args, char *)) == NULL)
      break;
    blen += (strlen(r) - strlen(m));                          // gadget
    marr[mlen] = m;                                           // gadget
    rarr[mlen++] = r;                                         // gadget
  }

  va_end(args);

  /* Try to handle large buffer situations (i.e. escaping of PR_TUNABLE_PATH_MAX
   * (>2048) correctly, but do not allow very big buffer sizes, that may
   * be dangerous (BUFSIZ may be defined in stdio.h) in some library
   * functions.
   */
#ifndef BUFSIZ
# define BUFSIZ 8192
#endif

  if (blen < BUFSIZ)
    cp = pbuf = (char *) pcalloc(p, ++blen);  // gadget

  if (!pbuf) {
    cp = pbuf = buf;
    dyn = 0;
    blen = sizeof(buf);
  }

  while (*src) {
    for (mptr = marr, rptr = rarr; *mptr; mptr++, rptr++) {
      mlen = strlen(*mptr);
      rlen = strlen(*rptr);

      if (strncmp(src, *mptr, mlen) == 0) {
        sstrncpy(cp, *rptr, blen - strlen(pbuf));
	if (((cp + rlen) - pbuf + 1) > blen) {
	  cp = pbuf + blen - 1;
	  goto done;

	} else {
	  cp += rlen;
	}
	
        src += mlen;
        break;
      }
    }

    if (!*mptr) {
      if ((cp - pbuf + 1) > blen) {
	      cp = pbuf + blen - 1;
      }
      *cp++ = *src++;
    }
  }

 done:
  *cp = '\0';

  if (dyn)
    return pbuf;

  return pstrdup(p, buf);
}

static char resp_buf[2048] = {'\0'};

void pr_response_send_raw(const char *fmt, ...) {
  va_list msg;

  va_start(msg, fmt);
  vsnprintf(resp_buf, sizeof(resp_buf), fmt, msg);
  va_end(msg);

  resp_buf[sizeof(resp_buf) - 1] = '\0';

  printf("%s\r\n", resp_buf);
}

int core_display_file(const char *numeric, const char *fn, const char *fs) {
  char buf[PR_TUNABLE_BUFFER_SIZE] = {'\0'};
  int len;
  unsigned int *current_clients = NULL;
  unsigned int *max_clients = NULL;
  off_t fs_size = 0;
  pool *p;
  xaset_t *s;
  config_rec *c = NULL;
  const char *serverfqdn = main_server->ServerFQDN;
  char *outs, mg_size[12] = {'\0'}, mg_size_units[12] = {'\0'},
    mg_max[12] = "unlimited";
  char total_files_in[12] = {'\0'}, total_files_out[12] = {'\0'},
    total_files_xfer[12] = {'\0'};
  char mg_class_limit[12] = {'\0'}, mg_cur[12] = {'\0'},
    mg_xfer_bytes[12] = {'\0'}, mg_cur_class[12] = {'\0'};
  char mg_xfer_units[12] = {'\0'}, config_class_users[128] = {'\0'}, *user;
  const char *mg_time;
  unsigned char first = TRUE;
  
  outs = sreplace(p, buf, "%C", (session.cwd[0] ? session.cwd : "(none)"), "%V", main_server->ServerName,  NULL);  // Gadget

  while (buf != NULL) {
    buf[sizeof(buf)-1] = '\0';

    len = strlen(buf);

    while(len && (buf[len-1] == '\r' || buf[len-1] == '\n')) {
      buf[len-1] = '\0';
      len--;
    }

    outs = sreplace(p, buf, "%C", (session.cwd[0] ? session.cwd : "(none)"), "%V", main_server->ServerName,  NULL);  // Gadget
    pr_response_send_raw(" %s", outs);
  }

  return 0;
}

static int _dispatch(cmd_rec *cmd, int cmd_type, int validate, char *match) {
  char *cmdargstr = NULL;
  int success = 0;
  int send_error = 0;
  static int match_index_cache = -1;
  static char *last_match = NULL;
  int *index_cache;

  send_error = (cmd_type == PRE_CMD || cmd_type == CMD ||
    cmd_type == POST_CMD_ERR);

  if (!match) {
    match = cmd->argv[0];
    index_cache = &cmd->stash_index;

  } else {
    if (last_match != match) {
      match_index_cache = -1;
      last_match = match;
    }

    index_cache = &match_index_cache;
  }

  return success;
}

typedef struct resp_struc {
  struct resp_struc *next;
  char *num;
  char *msg;
} pr_response_t;

pr_response_t *resp_list = NULL, *resp_err_list = NULL;

#define C_ANY	"*"		/* Special "wildcard" matching command */

void pr_cmd_dispatch(cmd_rec *cmd) {
  char *cp = NULL;
  int success = 0;

  // cmd->server = main_server;
  resp_list = resp_err_list = NULL;

  /* Set the pool used for the response lists for this command. */
  // pr_response_set_pool(cmd->pool);

  // for (cp = cmd->argv[0]; *cp; cp++)
  //   *cp = toupper(*cp);

  // if (!cmd->class)
  //   cmd->class = get_command_class(cmd->argv[0]);

  core_display_file(R_220, cp, NULL);

  /* First, dispatch to wildcard PRE_CMD handlers. */
  success = _dispatch(cmd, PRE_CMD, FALSE, C_ANY);

  if (!success)	/* run other pre_cmd */
    success = _dispatch(cmd, PRE_CMD, FALSE, NULL);

  if (success < 0) {

    /* Dispatch to POST_CMD_ERR handlers as well. */

    _dispatch(cmd, POST_CMD_ERR, FALSE, C_ANY);
    _dispatch(cmd, POST_CMD_ERR, FALSE, NULL);

    _dispatch(cmd, LOG_CMD_ERR, FALSE, C_ANY);
    _dispatch(cmd, LOG_CMD_ERR, FALSE, NULL);

    // pr_response_flush(&resp_err_list);
    return;
  }

  success = _dispatch(cmd, CMD, FALSE, C_ANY);

  if (!success)
    success = _dispatch(cmd, CMD, TRUE, NULL);

  if (success == 1) {
    success = _dispatch(cmd, POST_CMD, FALSE, C_ANY);
    if (!success)
      success = _dispatch(cmd, POST_CMD, FALSE, NULL);

    _dispatch(cmd, LOG_CMD, FALSE, C_ANY);
    _dispatch(cmd, LOG_CMD, FALSE, NULL);

    // pr_response_flush(&resp_list);

  } else if (success < 0) {

    /* Allow for non-logging command handlers to be run if CMD fails. */

    success = _dispatch(cmd, POST_CMD_ERR, FALSE, C_ANY);
    if (!success)
      success = _dispatch(cmd, POST_CMD_ERR, FALSE, NULL);

    _dispatch(cmd, LOG_CMD_ERR, FALSE, C_ANY);
    _dispatch(cmd, LOG_CMD_ERR, FALSE, NULL);

    // pr_response_flush(&resp_err_list);
  }
}

static void cmd_loop(server_rec *server, conn_t *c) {
  static long cmd_buf_size = -1;
  config_rec *id = NULL;
  char buf[PR_TUNABLE_BUFFER_SIZE] = {'\0'};
  char *cp;
  char *display = NULL;
  const char *serveraddress = NULL;
  config_rec *masq_c = NULL;
  int i;

  klee_make_symbolic(&cmd_buf_size, sizeof(cmd_buf_size), "cmd_buf_size");
  klee_make_symbolic(&buf, sizeof(buf), "buf");
  klee_make_symbolic(&cp, sizeof(cp), "cp");
  klee_make_symbolic(&display, sizeof(display), "display");
  klee_make_symbolic(&serveraddress, sizeof(serveraddress), "serveraddress");
  klee_make_symbolic(&masq_c, sizeof(masq_c), "masq_c");
  klee_make_symbolic(&i, sizeof(i), "i");

  int MAX_LOOP = 10;

  // while (TRUE) {
  while (MAX_LOOP>0) {
    MAX_LOOP--;
    if (cmd_buf_size == -1) {
	    cmd_buf_size = 512;
    }

    buf[cmd_buf_size - 1] = '\0';
    i = strlen(buf);

    if (i && (buf[i-1] == '\n' || buf[i-1] == '\r')) {
      buf[i-1] = '\0';
      i--;

      if (i && (buf[i-1] == '\n' || buf[i-1] =='\r'))
        buf[i-1] = '\0';
    }

    cp = buf;
    if (*cp == '\r')
      cp++;

    if (*cp) {
      cmd_rec *cmd;
      int flags = 0;

      /* If this is a SITE command, preserve embedded whitespace in the
       * command parameters, in order to handle file names that have multiple
       * spaces in the names.  Arguably this should be handled in the SITE
       * command handlers themselves, via cmd->arg.  This small hack
       * reduces the burden on SITE module developers, however.
       */
      // if (my_strncasecmp(cp, C_SITE, 4) == 0)
      //   flags |= PR_STR_FL_PRESERVE_WHITESPACE;

      // cmd = make_ftp_cmd(session.pool, cp, flags);
      cmd = NULL;

      pr_cmd_dispatch(cmd);
    }
  }
}

static void fork_server(int fd, unsigned char nofork) {
  conn_t *conn = NULL;
  unsigned char *ident_lookups = NULL;
  int i, rev;
  int semfds[2] = { -1, -1 };
  int xerrno = 0;

  cmd_loop(main_server, conn);
}

static void inetd_main(void) {
  int res = 0;

  fork_server(STDIN_FILENO, TRUE);
}

extern char *optarg;
extern int optind,opterr,optopt;

#ifdef HAVE_GETOPT_LONG
static struct option opts[] = {
  { "nodaemon",	      0, NULL, 'n' },
  { "quiet",	      0, NULL, 'q' },
  { "debug",	      1, NULL, 'd' },
  { "define",	      1, NULL, 'D' },
  { "config",	      1, NULL, 'c' },
  { "persistent",     1, NULL, 'p' },
  { "list",           0, NULL, 'l' },
  { "version",        0, NULL, 'v' },
  { "version-status", 0, NULL, 1   },
  { "configtest",     0, NULL, 't' },
  { "help",	      0, NULL, 'h' },
  { NULL,	      0, NULL,  0  }
};
#endif /* HAVE_GETOPT_LONG */

static struct option_help {
  const char *long_opt,*short_opt,*desc;
} opts_help[] = {
  { "--help", "-h",
    "Display proftpd usage"},
  { "--nodaemon", "-n",
    "Disable background daemon mode and send all output to stderr)" },
  { "--quiet", "-q",
    "Don't send output to stderr when running with -n or --nodaemon" },
  { "--debug", "-d [level]",
    "Set debugging level (0-9, 9 = most debugging)" },
  { "--define", "-D [definition]",
    "Set arbitrary IfDefine definition" },
  { "--config", "-c [config-file]",
    "Specify alternate configuration file" },
  { "--persistent", "-p [0|1]",
    "Enable/disable default persistent passwd support" },
  { "--list", "-l",
    "List all compiled-in modules" },
  { "--configtest", "-t",
    "Test the syntax of the specified config" },
  { "--version", "-v",
    "Print version number and exit" },
  { "--version-status", "-vv",
    "Print extended version information and exit" },
  { NULL, NULL, NULL }
};

static void show_usage(int exit_code) {
  struct option_help *h;

  printf("usage: proftpd [options]\n");
  for (h = opts_help; h->long_opt; h++) {
#ifdef HAVE_GETOPT_LONG
    printf(" %s, %s\n ", h->short_opt, h->long_opt);
#else /* HAVE_GETOPT_LONG */
    printf(" %s\n", h->short_opt);
#endif /* HAVE_GETOPT_LONG */
    printf("    %s\n", h->desc);
  }

  exit(exit_code);
}

int main(int argc, char *argv[], char **envp) {
  int optc, show_version = 0;
  const char *cmdopts = "D:nqd:c:p:lhtv";
  // mode_t *main_umask = NULL;
  // socklen_t peerlen;
  // struct sockaddr peer;

  memset(&session, 0, sizeof(session));

  /* Initialize stuff for set_proc_title. */
  // init_proc_title(argc, argv, envp);

  /* Seed rand */
  srand(time(NULL));

  /* Command line options supported:
   *
   * -D parameter       set run-time configuration parameter
   * --define parameter
   * -c path            set the configuration path
   * --config path
   * -d n               set the debug level
   * --debug n
   * -q                 quiet mode; don't log to stderr when not daemonized
   * --quiet
   * -n                 standalone server does not daemonize, all logging
   * --nodaemon         redirected to stderr
   * -t                 syntax check of the configuration file
   * --configtest
   * -v                 report version number
   * --version
   */

  opterr = 0;
  while ((optc =
#ifdef HAVE_GETOPT_LONG
	 getopt_long(argc, argv, cmdopts, opts, NULL)
#else /* HAVE_GETOPT_LONG */
	 getopt(argc, argv, cmdopts)
#endif /* HAVE_GETOPT_LONG */
	 ) != -1) {
    switch (optc) {

    case 'D':
      if (!optarg) {
        // pr_log_pri(PR_LOG_ERR, "Fatal: -D requires definition argument");
        exit(1);
      }

      /* If this is the first time through, allocate an array_header
       * for these command-line definitions.
       */
      // if (!server_defines)
      //   server_defines = make_array(permanent_pool, 0, sizeof(char *));

      // *((char **) push_array(server_defines)) = pstrdup(permanent_pool, optarg);
      break;

    case 'n':
      nodaemon++;
      break;

    case 'q':
      quiet++;
      break;

    case 'd':
      if (!optarg) {
        // pr_log_pri(PR_LOG_ERR, "Fatal: -d requires debugging level argument.");
        exit(1);
      }
      // pr_log_setdebuglevel(atoi(optarg));
      break;

    case 'c':
      if (!optarg) {
        // pr_log_pri(PR_LOG_ERR,
        //   "Fatal: -c requires configuration path argument.");
        exit(1);
      }

      /* Note: we delay sanity-checking the given path until after the FSIO
       * layer has been initialized.
       */
      config_filename = strdup(optarg);
      break;

    case 'l':
      // modules_list();
      exit(0);
      break;

    case 't':
      syntax_check = 1;
      printf("Checking syntax of configuration file\n");
      fflush(stdout);
      break;

    case 'p': {
      if (!optarg ||
          ((persistent_passwd = atoi(optarg)) != 1 && persistent_passwd != 0)) {
        // pr_log_pri(PR_LOG_ERR, "Fatal: -p requires boolean (0|1) argument.");
        exit(1);
      }

      break;
    }

    case 'v':
      show_version++;
      break;

    case 1:
      show_version = 2;
      break;

    case 'h':
      show_usage(0);

    case '?':
      // pr_log_pri(PR_LOG_ERR, "unknown option: %c", (char)optopt);
      show_usage(1);
    }
  }

  inetd_main();

  return 0;
}
