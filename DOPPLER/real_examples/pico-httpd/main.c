#include <sys/stat.h>
#include <klee/klee.h>

#define CHUNK_SIZE 1024 // read 1024 bytes at a time

// Public directory settings
#define PUBLIC_DIR "./public"
#define INDEX_HTML "/index.html"
#define NOT_FOUND_HTML "/404.html"

#include <arpa/inet.h>
#include <ctype.h>
#include <netdb.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <unistd.h>

#define MAX_CONNECTIONS 1000
#define BUF_SIZE 65535
#define QUEUE_SIZE 1000000

// Client request
extern char *method, // "GET" or "POST"
*uri,            // "/index.html" things before '?'
*qs,             // "a=1&b=2" things after  '?'
*prot,           // "HTTP/1.1"
*payload;        // for POST

extern int payload_size;

// Server control functions
void serve_forever(const char *PORT);

char *request_header(const char *name);

typedef struct {
    char *name, *value;
} header_t;
static header_t reqhdr[17] = {{"\0", "\0"}};
header_t *request_headers(void);

// user shall implement this function

void route();

// Response
#define RESPONSE_PROTOCOL "HTTP/1.1"

#define HTTP_200 printf("%s 200 OK\n\n", RESPONSE_PROTOCOL)
#define HTTP_201 printf("%s 201 Created\n\n", RESPONSE_PROTOCOL)
#define HTTP_404 printf("%s 404 Not found\n\n", RESPONSE_PROTOCOL)
#define HTTP_500 printf("%s 500 Internal Server Error\n\n", RESPONSE_PROTOCOL)

// some interesting macro for `route()`
#define ROUTE_START() if (0) {
#define ROUTE(METHOD, URI)                                                     \
  }                                                                            \
  else if (strcmp(URI, uri) == 0 && strcmp(METHOD, method) == 0) {
#define GET(URI) ROUTE("GET", URI)
#define POST(URI) ROUTE("POST", URI)
#define ROUTE_END()                                                            \
  }                                                                            \
  else HTTP_500;


static int listenfd;
int *clients;
static void start_server(const char *);
static void respond(int);

static char *buf;

// Client request
char *method, // "GET" or "POST"
*uri,     // "/index.html" things before '?'
*qs,      // "a=1&b=2" things after  '?'
*prot,    // "HTTP/1.1"
*payload; // for POST

int payload_size;

void serve_forever(const char *PORT) {
    struct sockaddr_in clientaddr;
    socklen_t addrlen;

    int slot = 0;

    printf("Server started %shttp://127.0.0.1:%s%s\n", "\033[92m", PORT,
           "\033[0m");

    // create shared memory for client slot array
    clients = mmap(NULL, sizeof(*clients) * MAX_CONNECTIONS,
                   PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_SHARED, -1, 0);
    klee_make_symbolic(&clientaddr, sizeof(clientaddr), "clientaddr");

    // Setting all elements to -1: signifies there is no client connected
    int i;
    for (i = 0; i < MAX_CONNECTIONS; i++)
        clients[i] = -1;
    start_server(PORT);

    // Ignore SIGCHLD to avoid zombie threads
    signal(SIGCHLD, SIG_IGN);

    // ACCEPT connections
    while (1) {
        addrlen = sizeof(clientaddr);
        clients[slot] = accept(listenfd, (struct sockaddr *)&clientaddr, &addrlen);

        if (clients[slot] < 0) {
            perror("accept() error");
            exit(1);
        } else {
            if (fork() == 0) {
                close(listenfd);
                respond(slot);
                close(clients[slot]);
                clients[slot] = -1;
                exit(0);
            } else {
                close(clients[slot]);
            }
        }

        while (clients[slot] != -1)
            slot = (slot + 1) % MAX_CONNECTIONS;
    }
}

// start server
void start_server(const char *port) {
    struct addrinfo hints, *res, *p;

    // getaddrinfo for host
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_PASSIVE;
    if (getaddrinfo(NULL, port, &hints, &res) != 0) {
        perror("getaddrinfo() error");
        exit(1);
    }
    // socket and bind
    for (p = res; p != NULL; p = p->ai_next) {
        int option = 1;
        listenfd = socket(p->ai_family, p->ai_socktype, 0);
        setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &option, sizeof(option));
        if (listenfd == -1)
            continue;
        if (bind(listenfd, p->ai_addr, p->ai_addrlen) == 0)
            break;
    }
    if (p == NULL) {
        perror("socket() or bind()");
        exit(1);
    }

    freeaddrinfo(res);

    // listen for incoming connections
    if (listen(listenfd, QUEUE_SIZE) != 0) {
        perror("listen() error");
        exit(1);
    }
}

// get request header by name
char *request_header(const char *name) {
    header_t *h = reqhdr;
    while (h->name) {
        if (strcmp(h->name, name) == 0)
            return h->value;
        h++;
    }
    return NULL;
}

// get all request headers
header_t *request_headers(void) { return reqhdr; }

// Handle escape characters (%xx)
static void uri_unescape(char *uri) {
    char chr = 0;
    char *src = uri;
    char *dst = uri;

    // Skip inital non encoded character
    while (*src && !isspace((int)(*src)) && (*src != '%'))
        src++;

    // Replace encoded characters with corresponding code.
    dst = src;
    while (*src && !isspace((int)(*src))) {
        if (*src == '+')
            chr = ' ';
        else if ((*src == '%') && src[1] && src[2]) {
            src++;
            chr = ((*src & 0x0F) + 9 * (*src > '9')) * 16;
            src++;
            chr += ((*src & 0x0F) + 9 * (*src > '9'));
        } else
            chr = *src;
        *dst++ = chr;
        src++;
    }
    *dst = '\0';
}

// client connection
void respond(int slot) {
    int rcvd;

    buf = malloc(BUF_SIZE);
    rcvd = recv(clients[slot], buf, BUF_SIZE, 0);

    if (rcvd < 0) // receive error
        fprintf(stderr, ("recv() error\n"));
    else if (rcvd == 0) // receive socket closed
        fprintf(stderr, "Client disconnected upexpectedly.\n");
    else // message received
    {
        buf[rcvd] = '\0';

        method = strtok(buf, " \t\r\n");
        uri = strtok(NULL, " \t");
        prot = strtok(NULL, " \t\r\n");

        uri_unescape(uri);

        fprintf(stderr, "\x1b[32m + [%s] %s\x1b[0m\n", method, uri);

        qs = strchr(uri, '?');

        if (qs)
            *qs++ = '\0'; // split URI
        else
            qs = uri - 1; // use an empty string

        header_t *h = reqhdr;
        char *t, *t2;
        while (h < reqhdr + 16) {
            char *key, *val;

            key = strtok(NULL, "\r\n: \t");
            if (!key)
                break;

            val = strtok(NULL, "\r\n");
            while (*val && *val == ' ')
                val++;

            h->name = key;
            h->value = val;
            h++;
            fprintf(stderr, "[H] %s: %s\n", key, val);
            t = val + 1 + strlen(val);
            if (t[1] == '\r' && t[2] == '\n')
                break;
        }
        t = strtok(NULL, "\r\n");
        t2 = request_header("Content-Length"); // and the related header if there is
        payload = t;
        payload_size = t2 ? atol(t2) : (rcvd - (t - buf));

        // bind clientfd to stdout, making it easier to write
        int clientfd = clients[slot];
        dup2(clientfd, STDOUT_FILENO);
        close(clientfd);

        // call router
        route();

        // tidy up
        fflush(stdout);
        shutdown(STDOUT_FILENO, SHUT_WR);
        close(STDOUT_FILENO);
    }

    free(buf);
}

int main(int c, char **v) {
    char *port = c == 1 ? "8000" : v[1];
    serve_forever(port);
    return 0;
}

int file_exists(const char *file_name) {
    struct stat buffer;
    int exists;

    exists = (stat(file_name, &buffer) == 0); // mem write ?

    return exists;
}

int read_file(const char *file_name) {
    char buf[CHUNK_SIZE];
    FILE *file;
    size_t nread;
    int err = 1;

    file = fopen(file_name, "r");

    if (file) {
        while ((nread = fread(buf, 1, sizeof buf, file)) > 0)
            fwrite(buf, 1, nread, stdout);

        err = ferror(file);
        fclose(file);
    }
    return err;
}

void route() {
    ROUTE_START()

    GET("/") {
            char index_html[20];
            sprintf(index_html, "%s%s", PUBLIC_DIR, INDEX_HTML);

            HTTP_200;
            if (file_exists(index_html)) {
                read_file(index_html);
            } else {
                printf("Hello! You are using %s\n\n", request_header("User-Agent"));
            }
        }

    GET("/test") {
            HTTP_200;
            printf("List of request headers:\n\n");

            header_t *h = request_headers();

            while (h->name) {
                printf("%s: %s\n", h->name, h->value);
                h++;
            }
        }

    POST("/") {
            HTTP_201;
            printf("Wow, seems that you POSTed %d bytes.\n", payload_size);
            printf("Fetch the data using `payload` variable.\n");
            if (payload_size > 0)
                printf("Request body: %s", payload);
        }

    GET(uri) {
            char file_name[255];
            klee_make_symbolic(&file_name, sizeof(file_name), "file_name");

            sprintf(file_name, "%s%s", PUBLIC_DIR, uri);

            if (file_exists(file_name)) {
                HTTP_200;
                read_file(file_name);
            } else {
                HTTP_404;
                sprintf(file_name, "%s%s", PUBLIC_DIR, NOT_FOUND_HTML);
                if (file_exists(file_name))
                    read_file(file_name);
            }
        }

        ROUTE_END()
}
