#include <sets.h>

#define PR_TUNABLE_BUFFER_SIZE 1024

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

  char na_ipstr[INET6_ADDRSTRLEN];
  int na_have_ipstr;

  /* Note: at some point, this union might/should be replaced with
   * struct sockaddr_storage.  Why?  The sockaddr_storage struct is
   * better defined to be aligned on OS/arch boundaries, for more efficient
   * allocation/access.
   */

  union {
    struct sockaddr_in v4;
    struct sockaddr_in6 v6;
  } na_addr;

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

  /* The listener for this server.  Note that this listener, and that
   * pointed to by ipbind->ib_listener (where ipbind->ib_server points to
   * this server_rec) are the same.  Ideally, we'd only want one pointer to
   * the listener around, and avoid the duplication.  To do this would
   * require further structural changes.
   */
  struct conn_struc *listen;

  /* Configuration details */
  xaset_t *conf;
  int config_type;

  /* Internal server ID, automatically assigned */
  unsigned int sid;

} server_rec;
