/*
    Null httpd -- simple http server
    Copyright (C) 2001-2002 Dan Cahill

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/
/* #includes */
#include <ctype.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/stat.h>
#include <klee/klee.h>

#include <dirent.h>
#include <netdb.h>
#include <paths.h>
#include <pthread.h>
#include <signal.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/resource.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>


/* #defines and typedefs */

#define DEFAULT_BASE_DIR "/usr/local/httpd"
#define SERVER_NAME	"Null httpd 0.5.0"

#define MAX_POSTSIZE	33554432 /* arbitrary 32 MB limit for POST request sizes */
#define MAX_REPLYSIZE	65536 /* arbitrary 64 KB limit for reply buffering */

typedef struct {
	char config_filename[255];
	char server_base_dir[255];
	char server_bin_dir[255];
	char server_cgi_dir[255];
	char server_etc_dir[255];
	char server_htdocs_dir[255];
	char server_hostname[64];
	short int server_port;
	short int server_loglevel;
	short int server_maxconn;
	short int server_maxidle;
} CONFIG;
typedef struct {
	// incoming data
	char in_Connection[16];
	int  in_ContentLength; // can be negative
	char in_ContentType[128];
	char in_Cookie[1024];
	char in_Host[64];
	char in_IfModifiedSince[64];
	char in_PathInfo[128];
	char in_Protocol[16];
	char in_QueryString[1024];
	char in_Referer[128];
	char in_RemoteAddr[16];
	int  in_RemotePort;
	char in_RequestMethod[8];
	char in_RequestURI[1024];
	char in_ScriptName[128];
	char in_UserAgent[128];
	// outgoing data
	short int out_status;
	char out_CacheControl[16];
	char out_Connection[16];
	int  out_ContentLength;
	char out_Date[64];
	char out_Expires[64];
	char out_LastModified[64];
	char out_Pragma[16];
	char out_Protocol[16];
	char out_Server[128];
	char out_ContentType[128];
	char out_ReplyData[MAX_REPLYSIZE];
	short int out_headdone;
	short int out_bodydone;
	short int out_flushed;
	// user data
	char envbuf[8192];
} CONNDATA;
typedef struct {
	pthread_t handle;
	unsigned long int id;
	short int socket;
	struct sockaddr_in ClientAddr;
	time_t ctime; // Creation time
	time_t atime; // Last Access time
	char *PostData;
	CONNDATA *dat;
} CONNECTION;
typedef struct {
	int in;
	int out;
} pipe_fd;

/* global vars */
struct {
	pthread_mutex_t Crypt;
	pthread_mutex_t Global;
	pthread_mutex_t SQL;
} Lock;
unsigned char program_name[255];
CONFIG config;
CONNECTION *conn;

/* main.c functions */
void dorequest(int sid);
/* cgi.c */
int cgi_main(void);
/* config.c functions */
int config_read(void);
/* files.c functions */
int dirlist(int sid);
int sendfile(int sid, unsigned char *file);
/* format.c */
void decodeurl(unsigned char *pEncoded);
void fixslashes(char *pOriginal);
int hex2int(char *pChars);
void striprn(char *string);
void swapchar(char *string, char oldchar, char newchar);
char *strcasestr(char *src, char *query);
char *strcatf(char *dest, const char *format, ...);
int printhex(const char *format, ...);
/* http.c functions */
void printerror(int sid, int status, char* title, char* text);
char *get_mime_type(char *name);
void ReadPOSTData(int sid);
int read_header(int sid);
void send_header(int sid, int cacheable, int status, char *title, char *extra_header, char *mime_type, int length, time_t mod);
void send_fileheader(int sid, int cacheable, int status, char *title, char *extra_header, char *mime_type, int length, time_t mod);
/* server.c functions */
void logaccess(int loglevel, const char *format, ...);
void logerror(const char *format, ...);
// int getsid(void);
void flushbuffer(int sid);
int prints(const char *format, ...);
int sgets(char *buffer, int max, int fd);
int closeconnect(int sid, int exitflag);
void server_shutdown();
int sockinit(void);
void cgiinit(void);
void init(void);
#ifdef WIN32
void WSAReaper(void *x);
#endif
void accept_loop(void *x);


int dirlist(int sid)
{
#ifdef WIN32
    struct	direct *dentry;
#else
    struct	dirent *dentry;
#endif
    DIR	*handle;
    char	file[1024];
    char	index[1024];
    char	showfile[1024];
    struct	stat sb;
    char	*directory;
    char timebuf[100];
    time_t t;

    if (strncmp(conn[sid].dat->in_RequestURI, "/", 1)!=0) {
        return -1;
    }
    directory=conn[sid].dat->in_RequestURI+1;
    snprintf(file, sizeof(file)-1, "%s/%s", config.server_htdocs_dir, directory);
    decodeurl(file);
    fixslashes(file);
    while ((file[strlen(file)-1]=='\\')||(file[strlen(file)-1]=='/')) { file[strlen(file)-1]='\0'; };
    if (strstr(file, "..")!=NULL) return -1;
    snprintf(index, sizeof(index)-1, "%s/%s/index.html", config.server_htdocs_dir, directory);
    decodeurl(index);
    fixslashes(index);
    if (stat(index, &sb)==0) {
        sendfile(sid, index);
        return 0;
    }
    if (stat(file, &sb)!=0) return -1;
    if (!(sb.st_mode & S_IFDIR)) return sendfile(sid, file);
    t=time((time_t*)0);
    strftime(timebuf, sizeof(timebuf), "%b %d %H:%M:%S", localtime(&t));
    send_header(sid, 0, 200, "OK", "1", "text/html", -1, -1);
    prints("<CENTER>\n<TABLE BORDER=1 CELLPADDING=2 CELLSPACING=0 WIDTH=90%%>\n");
    prints("<TR BGCOLOR=#00A5D0><TH COLSPAN=4>Index of %s</TH></TR>\n", conn[sid].dat->in_RequestURI);
    prints("<TR BGCOLOR=#E0E0E0>");
    prints("<TH width=20%%>Filename</TH><TH width=10%%>Size</TH>");
    prints("<TH width=10%%>Date</TH><TH width=60%%>Description</TH></TR>\n");
    handle=opendir(file);
    while ((dentry=readdir(handle))!=NULL) {
        snprintf(file, sizeof(file)-1, "%s/%s%s", config.server_htdocs_dir, directory, dentry->d_name);
        fixslashes(file);
        stat(file, &sb);
        if (strcmp(".", dentry->d_name)==0) continue;
        if ((strcmp("..", dentry->d_name)==0)&&(strcmp("/files/", conn[sid].dat->in_RequestURI)==0)) continue;
        if (strcmp("..", dentry->d_name)==0) {
            prints("<TR BGCOLOR=#F0F0F0><TD COLSPAN=4><IMG SRC=/images/foldero.gif>");
            prints("<A HREF=%s/> Parent Directory</A></TD>\n", dentry->d_name);
            continue;
        }
        strftime(timebuf, sizeof(timebuf), "%b %d %Y %H:%M", localtime(&sb.st_mtime));
        memset(showfile, 0, sizeof(showfile));
        snprintf(showfile, sizeof(showfile)-1, "%s", dentry->d_name);
        prints("<TR BGCOLOR=#F0F0F0><TD ALIGN=left NOWRAP>");
        if (sb.st_mode & S_IFDIR) {
            prints("<IMG SRC=/images/folder.gif>&nbsp;<A HREF=");
            printhex("%s", showfile);
            prints("/>%s/</A></TD>", dentry->d_name);
        } else {
            prints("<IMG SRC=/images/default.gif>&nbsp;<A HREF=");
            printhex("%s", showfile);
            prints(">%s</A></TD>", dentry->d_name);
        }
        if (sb.st_size>1048576) {
            prints("<TD ALIGN=right NOWRAP>%10.1f M</TD>\n", (float)sb.st_size/1048576.0);
        } else {
            prints("<TD ALIGN=right NOWRAP>%10.1f K</TD>\n", (float)sb.st_size/1024.0);
        }
        prints("<TD ALIGN=right NOWRAP>%s</TD>\n", timebuf);
        prints("<TD ALIGN=left NOWRAP>&nbsp;</TD></TR>\n");
    }
    closedir(handle);
    prints("</TABLE>\n");
    prints("</CENTER>\n");
    prints("</BODY></HTML>\n");
    return 0;
}

// cgi.c


#define BUFF_SIZE 8192

void cgi_makeargs(int sid, char *args[])
{
    char *ptemp;
    char progname[255];

    if (strncmp(conn[sid].dat->in_RequestURI, "/cgi-bin/", 9)!=0) return;
    args[0]=calloc(255, sizeof(char));
    snprintf(progname, sizeof(progname)-1, "%s", conn[sid].dat->in_RequestURI+9);
    if ((ptemp=strchr(progname, '?'))!=NULL) {
        args[1]=calloc(255, sizeof(char));
        snprintf(args[1], 254, "%s", ptemp+1);
        *ptemp='\0';
    }
    if ((ptemp=strchr(progname, '/'))!=NULL) {
        args[2]=calloc(255, sizeof(char));
        snprintf(args[2], 254, "%s", ptemp);
        *ptemp='\0';
    }
    snprintf(args[0], 254, "%s/%s", config.server_cgi_dir, progname);
    fixslashes(args[0]);
}

void cgi_makeenv(int sid, char *env[], char *args[])
{
    char *ptemp;
    int n=0;

    if (strncmp(conn[sid].dat->in_RequestURI, "/cgi-bin/", 9)!=0) return;
#ifdef WIN32
    if ((ptemp=getenv("COMSPEC"))!=NULL) {
		env[n]=calloc(1024, sizeof(char));
		snprintf(env[n++], MAX_PATH-1, "COMSPEC=%s", ptemp);
	}
#endif
    if (strcasecmp(conn[sid].dat->in_RequestMethod, "POST")==0) {
        env[n]=calloc(1024, sizeof(char));
        snprintf(env[n++], 1023, "CONTENT_LENGTH=%d", conn[sid].dat->in_ContentLength);
        env[n]=calloc(1024, sizeof(char));
        snprintf(env[n++], 1023, "CONTENT_TYPE=%s", conn[sid].dat->in_ContentType);
    }
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "DOCUMENT_ROOT=%s", config.server_htdocs_dir);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "GATEWAY_INTERFACE=CGI/1.1");
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "HTTP_CONNECTION=%s", conn[sid].dat->in_Connection);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "HTTP_COOKIE=%s", conn[sid].dat->in_Cookie);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "HTTP_HOST=%s", conn[sid].dat->in_Host);
    if ((ptemp=strchr(env[n-1], ':'))!=NULL) *ptemp='\0';
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "HTTP_USER_AGENT=%s", conn[sid].dat->in_UserAgent);
    if ((ptemp=getenv("PATH"))!=NULL) {
        env[n]=calloc(1024, sizeof(char));
        snprintf(env[n++], 1023, "PATH=%s", ptemp);
    }
    if (args[2]!=NULL) {
        env[n]=calloc(1024, sizeof(char));
        snprintf(env[n++], 1023, "PATH_INFO=%s", args[2]);
    }
    env[n]=calloc(1024, sizeof(char));
    if (args[1]!=NULL) {
        snprintf(env[n++], 1023, "QUERY_STRING=%s", args[1]);
    } else {
        snprintf(env[n++], 1023, "QUERY_STRING=");
    }
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "REMOTE_ADDR=%s", conn[sid].dat->in_RemoteAddr);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "REMOTE_PORT=%d", ntohs(conn[sid].ClientAddr.sin_port));
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "REQUEST_METHOD=%s", conn[sid].dat->in_RequestMethod);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "REQUEST_URI=%s", conn[sid].dat->in_RequestURI);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "SCRIPT_FILENAME=%s", args[0]);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "SCRIPT_NAME=%s", conn[sid].dat->in_RequestURI);
    if ((ptemp=strchr(env[n-1], '?'))!=NULL) *ptemp='\0';
    if ((ptemp=strchr(env[n-1]+21, '/'))!=NULL) *ptemp='\0';
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "SERVER_NAME=%s", config.server_hostname);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "SERVER_PORT=%d", config.server_port);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "SERVER_PROTOCOL=HTTP/1.1");
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "SERVER_SIGNATURE=<ADDRESS>%s</ADDRESS>", SERVER_NAME);
    env[n]=calloc(1024, sizeof(char));
    snprintf(env[n++], 1023, "SERVER_SOFTWARE=%s", SERVER_NAME);
#ifdef WIN32
    if ((ptemp=getenv("WINDIR"))!=NULL) {
		env[n]=calloc(1024, sizeof(char));
		snprintf(env[n++], 1023, "WINDIR=%s", ptemp);
	}
#endif
    free(args[1]);
    args[1]=NULL;
    free(args[2]);
    args[2]=NULL;
}

int cgi_main()
{
#ifdef WIN32
    char *cgi_types[3][2]={
		{ ".php", "PHP.EXE" },
		{ ".pl",  "PERL.EXE" },
		{ NULL,   NULL }
	};
	DWORD exitcode=0;
	HANDLE hMyProcess=GetCurrentProcess();
	PROCESS_INFORMATION pi;
	STARTUPINFO si;
	char Command[512];
	char Environ[8192];
	char Path[255];
#else
    char *cgi_types[3][2]={
            { ".php", "/usr/bin/php" },
            { ".pl",  "/usr/bin/perl" },
            { NULL,   NULL }
    };
    int pset1[2];
    int pset2[2];
#endif
    char *args[10];
    char *env[50];
    char cgifilename[255];
    char *extension;
    char szBuffer[BUFF_SIZE];
    pipe_fd local;
    pipe_fd remote;
    int sid=getsid(getpid());
    int nOutRead;
    int pid;
    unsigned int i;
    unsigned int n;

    memset(args, 0, sizeof(args));
    cgi_makeargs(sid, args);
    memset(env, 0, sizeof(env));
    cgi_makeenv(sid, env, args);
    snprintf(cgifilename, sizeof(cgifilename)-1, "%s", args[0]);
    for (i=0;i<10;i++) free(args[i]);
    n=0;
    if ((extension=strrchr(cgifilename, '.'))!=NULL) {
        for (i=0;cgi_types[i][0]!=NULL;i++) {
            if (strcmp(extension, cgi_types[i][0])==0) {
                args[n]=calloc(255, sizeof(char));
                snprintf(args[n], 254, "%s", cgi_types[i][1]);
                n++;
                break;
            }
        }
    }
    args[n]=calloc(255, sizeof(char));
    snprintf(args[n], 254, "%s", cgifilename);
#ifdef WIN32
    memset(Command, 0, sizeof(Command));
	memset(Environ, 0, sizeof(Environ));
	ZeroMemory(&pi, sizeof(pi));
	ZeroMemory(&si, sizeof(si));
	snprintf(Path, sizeof(Path)-1, "%s", cgifilename);
	if ((extension=strrchr(Path, '\\'))!=NULL) *extension='\0';
	if (args[1]==NULL) {
		snprintf(Command, sizeof(Command)-1, "%s", cgifilename);
	} else {
		snprintf(Command, sizeof(Command)-1, "%s \"%s\"", cgi_types[i][1], cgifilename);
	}
	for (i=0, n=0;env[i]!=NULL;i++) {
		if (n+strlen(env[i])>sizeof(Environ)) break;
		n+=sprintf(&Environ[n], "%s", env[i]);
		n++;
	}
	if (!CreatePipe((HANDLE)&remote.in, (HANDLE)&local.out, NULL, BUFF_SIZE)) {
		for (i=0;i<10;i++) free(args[i]);
		for (i=0;i<50;i++) free(env[i]);
		printerror(sid, 500, "Internal Server Error", "Unable to create pipe.");
		return -1;
	}
	if (!CreatePipe((HANDLE)&local.in, (HANDLE)&remote.out, NULL, BUFF_SIZE)) {
		for (i=0;i<10;i++) free(args[i]);
		for (i=0;i<50;i++) free(env[i]);
		CloseHandle((HANDLE)remote.in);
		CloseHandle((HANDLE)local.out);
		printerror(sid, 500, "Internal Server Error", "Unable to create pipe.");
		return -1;
	}
	si.cb=sizeof(si);
	si.dwFlags=STARTF_USESHOWWINDOW|STARTF_USESTDHANDLES;
	si.wShowWindow=SW_HIDE;
	si.hStdInput=(HANDLE)remote.in;
	si.hStdOutput=(HANDLE)remote.out;
	si.hStdError=(HANDLE)remote.out;
	if (!CreateProcess(NULL, Command, NULL, NULL, TRUE, CREATE_NO_WINDOW, Environ, Path, &si, &pi)) {
		for (i=0;i<10;i++) free(args[i]);
		for (i=0;i<50;i++) free(env[i]);
		CloseHandle((HANDLE)local.in);
		CloseHandle((HANDLE)local.out);
		CloseHandle((HANDLE)remote.in);
		CloseHandle((HANDLE)remote.out);
		logerror("CGI failed. [%s]", Command);
		printerror(sid, 500, "Internal Server Error", "There was a problem running the requested CGI.");
		return -1;
	}
	pid=pi.dwProcessId;
	CloseHandle(si.hStdInput);
	CloseHandle(si.hStdOutput);
#else
    if ((pipe(pset1)==-1) || (pipe(pset2)==-1)) {
        for (i=0;i<10;i++) free(args[i]);
        for (i=0;i<50;i++) free(env[i]);
        close(pset1[0]);
        close(pset1[1]);
        logerror("pipe() error");
        printerror(sid, 500, "Internal Server Error", "Unable to create pipe.");
        return -1;
    }
    local.in=pset1[0]; remote.out=pset1[1];
    remote.in=pset2[0]; local.out=pset2[1];
    logaccess(1, "Executing CGI [%s %s]", args[0], args[1]);
    pid=fork();
    if (pid<0) {
        logerror("fork() error");
        return -1;
    } else if (pid==0) {
        close(local.in);
        close(local.out);
        dup2(remote.in, fileno(stdin));
        dup2(remote.out, fileno(stdout));
//		if ((dup2(remote.in, fileno(stdin))!=0)||(dup2(remote.out, fileno(stdout))!=0)) {
//			logerror("dup2() error");
//			exit(0);
//		}
        execve(args[0], &args[0], &env[0]);
        logerror("execve() error [%s][%s]", args[0], args[1]);
        exit(0);
    } else {
        close(remote.in);
        close(remote.out);
    }
#endif
    if (conn[sid].dat->in_ContentLength>0) {
#ifdef WIN32
        WriteFile((HANDLE)local.out, conn[sid].PostData, conn[sid].dat->in_ContentLength, &nOutRead, NULL);
#else
        write(local.out, conn[sid].PostData, conn[sid].dat->in_ContentLength);
#endif
    }
    conn[sid].dat->out_headdone=1;
    conn[sid].dat->out_status=200;
    if (strcasestr(conn[sid].dat->in_Protocol, "HTTP/1.1")!=NULL) {
        snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.1");
    } else {
        snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.0");
    }
    snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
    prints("%s %d OK\r\n", conn[sid].dat->out_Protocol, conn[sid].dat->out_status);
    prints("Connection: %s\r\n", conn[sid].dat->out_Connection);
    flushbuffer(sid);
    do {
        memset(szBuffer, 0, sizeof(szBuffer));
#ifdef WIN32
        ReadFile((HANDLE)local.in, szBuffer, sizeof(szBuffer)-1, &nOutRead, NULL);
#else
        nOutRead=read(local.in, szBuffer, BUFF_SIZE-1);
#endif
        if (nOutRead>0) {
            send(conn[sid].socket, szBuffer, nOutRead, 0);
        };
    } while (nOutRead>0);
    flushbuffer(sid);
    /* cleanup */
    for (i=0;i<10;i++) free(args[i]);
    for (i=0;i<50;i++) free(env[i]);
#ifdef WIN32
    GetExitCodeProcess(pi.hProcess, &exitcode);
	if (exitcode==STILL_ACTIVE) TerminateProcess(pi.hProcess, 1);
	CloseHandle(pi.hThread);
	CloseHandle(pi.hProcess);
	CloseHandle((HANDLE)local.in);
	CloseHandle((HANDLE)local.out);
#else
    close(local.in);
    close(local.out);
#endif
    conn[sid].dat->out_bodydone=1;
    flushbuffer(sid);
    closeconnect(sid, 1);
    return 0;
}

// config.c


int config_read()
{
    FILE *fp=NULL;
    char line[512];
    struct stat sb;
    char *pVar;
    char *pVal;
    short int founddir=0;
#ifdef WIN32
    char slash='\\';
#else
    char slash='/';
#endif

    /* define default values */
    memset((char *)&config, 0, sizeof(config));
    pVal=program_name;
    if (*pVal=='\"') pVal++;
#ifdef WIN32
    snprintf(config.server_base_dir, sizeof(config.server_base_dir)-1, "%s", pVal);
#else
    if (getcwd(config.server_base_dir, sizeof(config.server_base_dir)-1)==NULL) return -1;
    strcat(config.server_base_dir, "/");
#endif
    if (strrchr(config.server_base_dir, slash)!=NULL) {
        pVal=strrchr(config.server_base_dir, slash);
        *pVal='\0';
        chdir(config.server_base_dir);
        if (strrchr(config.server_base_dir, slash)!=NULL) {
            pVal=strrchr(config.server_base_dir, slash);
            *pVal='\0';
            founddir=1;
        }
    }
    if (!founddir) {
        snprintf(config.server_base_dir, sizeof(config.server_base_dir)-1, "%s", DEFAULT_BASE_DIR);
    }
    snprintf(config.server_bin_dir, sizeof(config.server_bin_dir)-1, "%s/bin", config.server_base_dir);
    snprintf(config.server_cgi_dir, sizeof(config.server_cgi_dir)-1, "%s/cgi-bin", config.server_base_dir);
    snprintf(config.server_etc_dir, sizeof(config.server_etc_dir)-1, "%s/etc", config.server_base_dir);
    snprintf(config.server_htdocs_dir, sizeof(config.server_htdocs_dir)-1, "%s/htdocs", config.server_base_dir);
    fixslashes(config.server_base_dir);
    fixslashes(config.server_bin_dir);
    fixslashes(config.server_cgi_dir);
    fixslashes(config.server_etc_dir);
    fixslashes(config.server_htdocs_dir);
    config.server_loglevel=1;
    strncpy(config.server_hostname, "any", sizeof(config.server_hostname)-1);
    config.server_port=80;
    config.server_maxconn=50;
    config.server_maxidle=120;
    /* try to open the config file */
    /* try the current directory first, then ../etc/, then the default etc/ */
    if (fp==NULL) {
        snprintf(config.config_filename, sizeof(config.config_filename)-1, "httpd.cfg");
        fp=fopen(config.config_filename, "r");
    }
    if (fp==NULL) {
        snprintf(config.config_filename, sizeof(config.config_filename)-1, "../etc/httpd.cfg");
        fixslashes(config.config_filename);
        fp=fopen(config.config_filename, "r");
    }
    if (fp==NULL) {
        snprintf(config.config_filename, sizeof(config.config_filename)-1, "%s/httpd.cfg", config.server_etc_dir);
        fixslashes(config.config_filename);
        fp=fopen(config.config_filename, "r");
    }
    /* if config file couldn't be opened, try to write one */
    if (fp==NULL) {
        if (stat(config.server_etc_dir, &sb)!=0) {
            logerror("ERROR: Directory '%s' does not exist.  Failed to create configuration file.", config.server_etc_dir);
            return -1;
        };
        printf("Creating configuration file...");
        logaccess(1, "Creating configuration file...");
        snprintf(config.config_filename, sizeof(config.config_filename)-1, "%s/httpd.cfg", config.server_etc_dir);
        fixslashes(config.config_filename);
        fp=fopen(config.config_filename, "w");
        if (fp==NULL) {
            return -1;
        }
        fprintf(fp, "# This file contains system settings for Null httpd.\n\n");
        fprintf(fp, "SERVER_BASE_DIR = \"%s\"\n", config.server_base_dir);
        fprintf(fp, "SERVER_BIN_DIR  = \"%s\"\n", config.server_bin_dir);
        fprintf(fp, "SERVER_CGI_DIR  = \"%s\"\n", config.server_cgi_dir);
        fprintf(fp, "SERVER_ETC_DIR  = \"%s\"\n", config.server_etc_dir);
        fprintf(fp, "SERVER_HTTP_DIR = \"%s\"\n", config.server_htdocs_dir);
        fprintf(fp, "SERVER_LOGLEVEL = \"%d\"\n", config.server_loglevel);
        fprintf(fp, "SERVER_HOSTNAME = \"%s\"\n", config.server_hostname);
        fprintf(fp, "SERVER_PORT     = \"%d\"\n", config.server_port);
        fprintf(fp, "SERVER_MAXCONN  = \"%d\"\n", config.server_maxconn);
        fprintf(fp, "SERVER_MAXIDLE  = \"%d\"\n", config.server_maxidle);
        fclose(fp);
        printf("done.\n");
        return 0;
    }
    /* else if config file does exist, read it */
    while (fgets(line, sizeof(line)-1, fp)!=NULL) {
        while ((line[strlen(line)-1]=='\n')||(line[strlen(line)-1]=='\r')) {
            line[strlen(line)-1]='\0';
        }
        if (isalpha(line[0])) {
            pVar=line;
            pVal=line;
            while ((*pVal!='=')&&((char *)&pVal+1!='\0')) pVal++;
            *pVal='\0';
            pVal++;
            while (*pVar==' ') pVar++;
            while (pVar[strlen(pVar)-1]==' ') pVar[strlen(pVar)-1]='\0';
            while (*pVal==' ') pVal++;
            while (pVal[strlen(pVal)-1]==' ') pVal[strlen(pVal)-1]='\0';
            while (*pVal=='"') pVal++;
            while (pVal[strlen(pVal)-1]=='"') pVal[strlen(pVal)-1]='\0';
            if (strcmp(pVar, "SERVER_BASE_DIR")==0) {
                strncpy(config.server_base_dir, pVal, sizeof(config.server_base_dir)-1);
            } else if (strcmp(pVar, "SERVER_BIN_DIR")==0) {
                strncpy(config.server_bin_dir, pVal, sizeof(config.server_bin_dir)-1);
            } else if (strcmp(pVar, "SERVER_CGI_DIR")==0) {
                strncpy(config.server_cgi_dir, pVal, sizeof(config.server_cgi_dir)-1);
            } else if (strcmp(pVar, "SERVER_ETC_DIR")==0) {
                strncpy(config.server_etc_dir, pVal, sizeof(config.server_etc_dir)-1);
            } else if (strcmp(pVar, "SERVER_HTTP_DIR")==0) {
                strncpy(config.server_htdocs_dir, pVal, sizeof(config.server_htdocs_dir)-1);
            } else if (strcmp(pVar, "SERVER_LOGLEVEL")==0) {
                config.server_loglevel=atoi(pVal);
            } else if (strcmp(pVar, "SERVER_HOSTNAME")==0) {
                strncpy(config.server_hostname, pVal, sizeof(config.server_hostname)-1);
            } else if (strcmp(pVar, "SERVER_MAXCONN")==0) {
                config.server_maxconn=atoi(pVal);
            } else if (strcmp(pVar, "SERVER_PORT")==0) {
                config.server_port=atoi(pVal);
            } else if (strcmp(pVar, "SERVER_MAXIDLE")==0) {
                config.server_maxidle=atoi(pVal);
            }
            *pVal='\0';
            *pVar='\0';
        }
    }
    fclose(fp);
    if (config.server_maxconn<1) config.server_maxconn=1;
    if (config.server_maxconn>1000) config.server_maxconn=1000;
    return 0;
}

// files.c


void decodeurl(unsigned char *pEncoded)
{
    char *pDecoded;

    pDecoded=pEncoded;
    while (*pDecoded) {
        if (*pDecoded=='+') *pDecoded=' ';
        pDecoded++;
    };
    pDecoded=pEncoded;
    while (*pEncoded) {
        if (*pEncoded=='%') {
            pEncoded++;
            if (isxdigit(pEncoded[0])&&isxdigit(pEncoded[1])) {
                *pDecoded++=(char)hex2int(pEncoded);
                pEncoded+=2;
            }
        } else {
            *pDecoded++=*pEncoded++;
        }
    }
    *pDecoded='\0';
}

void fixslashes(char *pOriginal)
{
#ifdef WIN32
    swapchar(pOriginal, '/', '\\');
#else
    swapchar(pOriginal, '\\', '/');
#endif
}

int hex2int(char *pChars)
{
    int Hi;
    int Lo;
    int Result;

    Hi=pChars[0];
    if ('0'<=Hi&&Hi<='9') {
        Hi-='0';
    } else if ('a'<=Hi&&Hi<='f') {
        Hi-=('a'-10);
    } else if ('A'<=Hi&&Hi<='F') {
        Hi-=('A'-10);
    }
    Lo = pChars[1];
    if ('0'<=Lo&&Lo<='9') {
        Lo-='0';
    } else if ('a'<=Lo&&Lo<='f') {
        Lo-=('a'-10);
    } else if ('A'<=Lo&&Lo<='F') {
        Lo-=('A'-10);
    }
    Result=Lo+(16*Hi);
    return (Result);
}

void striprn(char *string)
{
    while ((string[strlen(string)-1]=='\r')||(string[strlen(string)-1]=='\n')) {
        string[strlen(string)-1]='\0';
    }
}

void swapchar(char *string, char oldchar, char newchar)
{
    while (*string) {
        if (*string==oldchar) *string=newchar;
        string++;
    }
}

char *strcasestr(char *src, char *query)
{
    char *pToken;
    char Buffer[8192];
    char Query[64];
    int loop;

    if (strlen(src)==0) return NULL;
    memset(Buffer, 0, sizeof(Buffer));
    strncpy(Buffer, src, sizeof(Buffer)-1);
    strncpy(Query, query, sizeof(Query)-1);
    loop=0;
    while (Buffer[loop]) {
        Buffer[loop]=toupper(Buffer[loop]);
        loop++;
    }
    loop=0;
    while (Query[loop]) {
        Query[loop]=toupper(Query[loop]);
        loop++;
    }
    pToken=strstr(Buffer, Query);
    if (pToken!=NULL) {
        return src+(pToken-(char *)&Buffer);
    }
    return NULL;
}

char *strcatf(char *dest, const char *format, ...)
{
    char catbuffer[1024];
    va_list ap;

    memset(catbuffer, 0, sizeof(catbuffer));
    va_start(ap, format);
    vsnprintf(catbuffer, sizeof(catbuffer)-1, format, ap);
    va_end(ap);
    strcat(dest, catbuffer);
    return dest;
}

int printhex(const char *format, ...)
{
    char *hex="0123456789ABCDEF";
    unsigned char buffer[1024];
    int offset=0;
    va_list ap;

    va_start(ap, format);
    vsnprintf(buffer, sizeof(buffer)-1, format, ap);
    va_end(ap);
    while (buffer[offset]) {
        if ((buffer[offset]>32)&&(buffer[offset]<128)&&(buffer[offset]!='<')&&(buffer[offset]!='>')) {
            prints("%c", buffer[offset]);
        } else {
            prints("%%%c%c", hex[(unsigned int)buffer[offset]/16], hex[(unsigned int)buffer[offset]&15]);
        }
        offset++;
    }
    return 0;
}

// http.c


#define RFC1123FMT "%a, %d %b %Y %H:%M:%S GMT"

void printerror(int sid, int status, char* title, char* text)
{
    send_header(sid, 0, 200, "OK", "1", "text/html", -1, -1);
    prints("<HTML><HEAD><TITLE>%d %s</TITLE></HEAD>\n", status, title);
    prints("<BODY BGCOLOR=#F0F0F0 TEXT=#000000 LINK=#0000FF ALINK=#0000FF VLINK=#0000FF>\n");
    prints("<H1>%d %s</H1>\n", status, title);
    prints("%s\n", text);
    prints("<HR>\n<ADDRESS>%s</ADDRESS>\n</BODY></HTML>\n", SERVER_NAME);
    conn[sid].dat->out_bodydone=1;
    flushbuffer(sid);
    closeconnect(sid, 1);
    return;
}

char *get_mime_type(char *name)
{
    char *mime_types[40][2]={
            { ".html", "text/html" },
            { ".htm",  "text/html" },
            { ".shtml","text/html" },
            { ".css",  "text/css" },
            { ".txt",  "text/plain" },
            { ".mdb",  "application/msaccess" },
            { ".xls",  "application/msexcel" },
            { ".doc",  "application/msword" },
            { ".exe",  "application/octet-stream" },
            { ".pdf",  "application/pdf" },
            { ".rtf",  "application/rtf" },
            { ".tgz",  "application/x-compressed" },
            { ".gz",   "application/x-compressed" },
            { ".z",    "application/x-compress" },
            { ".swf",  "application/x-shockwave-flash" },
            { ".tar",  "application/x-tar" },
            { ".rar",  "application/x-rar-compressed" },
            { ".zip",  "application/x-zip-compressed" },
            { ".ra",   "audio/x-pn-realaudio" },
            { ".ram",  "audio/x-pn-realaudio" },
            { ".wav",  "audio/x-wav" },
            { ".gif",  "image/gif" },
            { ".jpeg", "image/jpeg" },
            { ".jpe",  "image/jpeg" },
            { ".jpg",  "image/jpeg" },
            { ".png",  "image/png" },
            { ".avi",  "video/avi" },
            { ".mp3",  "video/mpeg" },
            { ".mpeg", "video/mpeg" },
            { ".mpg",  "video/mpeg" },
            { ".qt",   "video/quicktime" },
            { ".mov",  "video/quicktime" },
            { "",      "" }
    };
    char *extension;
    int i;

    extension=strrchr(name, '.');
    if (extension==NULL) {
        return "text/plain";
    }
    i=0;
    while (strlen(mime_types[i][0])>0) {
        if (strcmp(extension, mime_types[i][0])==0) {
            return mime_types[i][1];
        }
        i++;
    }
    return "application/octet-stream";
}

inline void ReadPOSTData(int sid) {
    char *pPostData;
    int rc=0;
    int x=0;

    klee_make_symbolic(&pPostData, sizeof(pPostData), "pPostData");
    klee_make_symbolic(&rc, sizeof(rc), "rc");
    klee_make_symbolic(&x, sizeof(x), "x");

//    if (conn[sid].PostData!=NULL) {
//        free(conn[sid].PostData);
//        conn[sid].PostData=NULL;
//    }
//    conn[sid].PostData=calloc(conn[sid].dat->in_ContentLength+1024, sizeof(char));
//    if (conn[sid].PostData==NULL) {
//        logerror("Memory allocation error while reading POST data.");
//        closeconnect(sid, 1);
//    }
    // pPostData=conn[sid].PostData;
    /* reading beyond PostContentLength is required for IE5.5 and NS6 (HTTP 1.1) */

    // pthread_t handle;
    // unsigned long int id;
    // short int socket;
    // struct sockaddr_in ClientAddr;
    // time_t ctime; // Creation time
    // time_t atime; // Last Access time
    // char *PostData;

    do {
        // rc=recv(conn[sid].socket, pPostData, 1024, 0);
        if (rc==-1) {
            // closeconnect(sid, 1);
            return;
        }
        pPostData+=rc;
        x+=rc;
    } while ((rc==1024)||(x>0 && x<100));
    // conn[sid].PostData[conn[sid].dat->in_ContentLength]='\0';

    exit(0);
}

inline int read_header(int sid)
{
    char line[2048];
    char *pTemp;
    time_t x;

    ReadPOSTData(sid);

    return 0;

    // strncpy(conn[sid].dat->in_RemoteAddr, inet_ntoa(conn[sid].ClientAddr.sin_addr), sizeof(conn[sid].dat->in_RemoteAddr)-1);
    // x=time((time_t*)0);
//    do {
//        memset(line, 0, sizeof(line));
//        // sgets(line, sizeof(line)-1, conn[sid].socket);
//        // striprn(line);
//    } while ((strlen(line)==0)&&((time((time_t)0)-x)<30));
//    if ((strlen(line)==0)&&((time((time_t)0)-x)>=30)) {
//        closeconnect(sid, 1);
//    }

//    if (strlen(line)==0)
//        printerror(sid, 400, "Bad Request", "No Request Found.");
   //  if (sscanf(line, "%[^ ] %[^ ] %[^ ]", conn[sid].dat->in_RequestMethod, conn[sid].dat->in_RequestURI, conn[sid].dat->in_Protocol)!=3)
   //    printerror(sid, 400, "Bad Request", "Can't Parse Request.");
    // pTemp=conn[sid].dat->in_RequestMethod;
    // while (*pTemp) { *pTemp=toupper(*pTemp); pTemp++; };
    // while (strlen(line)>0) {
        // sgets(line, sizeof(line)-1, conn[sid].socket);
//        while ((line[strlen(line)-1]=='\n')||(line[strlen(line)-1]=='\r')) line[strlen(line)-1]='\0';
//        if (strncasecmp(line, "Connection: ", 12)==0)
//            strncpy(conn[sid].dat->in_Connection, (char *)&line+12, sizeof(conn[sid].dat->in_Connection)-1);
//        if (strncasecmp(line, "Content-Length: ", 16)==0)
//            conn[sid].dat->in_ContentLength=atoi((char *)&line+16);

        // position of the vulnerabiltiy
        // conn[sid].dat->in_ContentLength can be a negative value

        // if (conn[sid].dat->in_ContentLength<0) {
        // 	// Negative Content-Length?  If so, the client is either broken or malicious.
        // 	// Thanks to <ilja@idefense.be> for spotting this one.
        // 	logerror("ERROR: negative Content-Length of %d provided by client.", conn[sid].dat->in_ContentLength);
        // 	conn[sid].dat->in_ContentLength=0;
        // }
//        if (strncasecmp(line, "Cookie: ", 8)==0)
//            strncpy(conn[sid].dat->in_Cookie, (char *)&line+8, sizeof(conn[sid].dat->in_Cookie)-1);
//        if (strncasecmp(line, "Host: ", 6)==0)
//            strncpy(conn[sid].dat->in_Host, (char *)&line+6, sizeof(conn[sid].dat->in_Host)-1);
//        if (strncasecmp(line, "If-Modified-Since: ", 19)==0)
//            strncpy(conn[sid].dat->in_IfModifiedSince, (char *)&line+19, sizeof(conn[sid].dat->in_IfModifiedSince)-1);
//        if (strncasecmp(line, "User-Agent: ", 12)==0)
//            strncpy(conn[sid].dat->in_UserAgent, (char *)&line+12, sizeof(conn[sid].dat->in_UserAgent)-1);
//    }

    if ((strcmp(conn[sid].dat->in_RequestMethod, "GET")!=0)&&(strcmp(conn[sid].dat->in_RequestMethod, "POST")!=0)) {
        printerror(sid, 501, "Not Implemented", "That method is not implemented.");
        closeconnect(sid, 1);
        return -1;
    }
    if (strcmp(conn[sid].dat->in_RequestMethod, "POST")==0) {
        if (conn[sid].dat->in_ContentLength<MAX_POSTSIZE) {
            ReadPOSTData(sid);
        } else {
            // try to print an error : note the inbuffer being full may block us
            // FIXME: this is causing the children to segfault in win32
            printerror(sid, 413, "Bad Request", "Request entity too large.");
            logerror("%s - Large POST (>%d bytes) disallowed", conn[sid].dat->in_RemoteAddr, MAX_POSTSIZE);
            closeconnect(sid, 1);
            return -1;
        }
    }
    if (conn[sid].dat->in_RequestURI[0]!='/') {
        printerror(sid, 400, "Bad Request", "Bad filename.");
    }
    if (strchr(conn[sid].dat->in_RequestURI, '?')!=NULL) {
        strncpy(conn[sid].dat->in_QueryString, strchr(conn[sid].dat->in_RequestURI, '?')+1, sizeof(conn[sid].dat->in_QueryString)-1);
    }
    return 0;
}

void send_header(int sid, int cacheable, int status, char *title, char *extra_header, char *mime_type, int length, time_t mod)
{
    char timebuf[100];
    time_t now;

    if (status) {
        conn[sid].dat->out_status=status;
    } else {
        conn[sid].dat->out_status=200;
    }
    if (length>=0) {
        conn[sid].dat->out_ContentLength=length;
    }
    if (mod!=(time_t)-1) {
        strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&mod));
        snprintf(conn[sid].dat->out_LastModified, sizeof(conn[sid].dat->out_LastModified)-1, "%s", timebuf);
    }
    now=time((time_t*)0);
    strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
    snprintf(conn[sid].dat->out_Date, sizeof(conn[sid].dat->out_Date)-1, "%s", timebuf);
    if (cacheable) {
        snprintf(conn[sid].dat->out_CacheControl, sizeof(conn[sid].dat->out_CacheControl)-1, "public");
        snprintf(conn[sid].dat->out_Pragma, sizeof(conn[sid].dat->out_Pragma)-1, "public");
    } else {
        snprintf(conn[sid].dat->out_CacheControl, sizeof(conn[sid].dat->out_CacheControl)-1, "no-store");
        snprintf(conn[sid].dat->out_Expires, sizeof(conn[sid].dat->out_Expires)-1, "%s", timebuf);
        snprintf(conn[sid].dat->out_Pragma, sizeof(conn[sid].dat->out_Pragma)-1, "no-cache");
    }
    if (extra_header!=(char*)0) {
        snprintf(conn[sid].dat->out_ContentType, sizeof(conn[sid].dat->out_ContentType)-1, "%s", mime_type);
    } else {
        snprintf(conn[sid].dat->out_ContentType, sizeof(conn[sid].dat->out_ContentType)-1, "text/html");
    }
}

void send_fileheader(int sid, int cacheable, int status, char *title, char *extra_header, char *mime_type, int length, time_t mod)
{
    char timebuf[100];
    time_t now;

    if (status) {
        conn[sid].dat->out_status=status;
    } else {
        conn[sid].dat->out_status=200;
    }
    if (strcasestr(conn[sid].dat->in_Protocol, "HTTP/1.1")!=NULL) {
        snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.1");
    } else {
        snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.0");
    }
    if (strcasecmp(conn[sid].dat->in_Connection, "Keep-Alive")==0) {
        snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Keep-Alive");
    } else {
        snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
    }
    // Nutscrape and Mozilla don't know what a fucking keepalive is
    if ((strcasestr(conn[sid].dat->in_UserAgent, "MSIE")==NULL)) {
        snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
    }
    prints("%s %d OK\r\n", conn[sid].dat->out_Protocol, conn[sid].dat->out_status);
    prints("Connection: %s\r\n", conn[sid].dat->out_Connection);
    prints("Server: %s\r\n", SERVER_NAME);
    if ((length>=0)&&(status!=304)) {
        prints("Content-Length: %d\r\n", length);
    }
    now=time((time_t*)0);
    strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
    prints("Date: %s\r\n", timebuf);
    if (mod!=(time_t)-1) {
        strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&mod));
        prints("Last-Modified: %s\r\n", timebuf);
    }
    if (cacheable) {
        now=time((time_t*)0)+604800;
        strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
        prints("Expires: %s\r\n", timebuf);
        prints("Cache-Control: public\r\n");
        prints("Pragma: public\r\n");
    } else {
        now=time((time_t*)0);
        strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
        prints("Expires: %s\r\n", timebuf);
        prints("Cache-Control: no-store\r\n");
        prints("Pragma: no-cache\r\n");
    }
    if (extra_header!=(char*)0) {
        prints("Content-Type: %s\r\n\r\n", mime_type);
    } else {
        prints("Content-Type: text/html\r\n\r\n");
    }
    conn[sid].dat->out_headdone=1;
    flushbuffer(sid);
}

// server.c


#ifdef WIN32
static WSADATA wsaData;
#endif
static int ListenSocket;

void logaccess(int loglevel, const char *format, ...)
{
    char logbuffer[1024];
    char timebuffer[100];
    char file[200];
    va_list ap;
    FILE *fp;
    struct timeval ttime;
    struct timezone tzone;

    if (loglevel>config.server_loglevel) return;
    snprintf(file, sizeof(file)-1, "%s/access.log", config.server_etc_dir);
    fixslashes(file);
    fp=fopen(file, "a");
    if (fp!=NULL) {
        va_start(ap, format);
        vsnprintf(logbuffer, sizeof(logbuffer)-1, format, ap);
        va_end(ap);
        gettimeofday(&ttime, &tzone);
        strftime(timebuffer, sizeof(timebuffer), "%b %d %H:%M:%S", localtime(&ttime.tv_sec));
        fprintf(fp, "%s - [%d] %s\n", timebuffer, loglevel, logbuffer);
        fclose(fp);
    }
}

void logerror(const char *format, ...)
{
    char logbuffer[1024];
    char timebuffer[100];
    char file[200];
    va_list ap;
    FILE *fp;
    struct timeval ttime;
    struct timezone tzone;

    snprintf(file, sizeof(file)-1, "%s/error.log", config.server_etc_dir);
    fixslashes(file);
    fp=fopen(file, "a");
    if (fp!=NULL) {
        va_start(ap, format);
        vsnprintf(logbuffer, sizeof(logbuffer)-1, format, ap);
        va_end(ap);
        gettimeofday(&ttime, &tzone);
        strftime(timebuffer, sizeof(timebuffer), "%b %d %H:%M:%S", localtime(&ttime.tv_sec));
        fprintf(fp, "%s - %s\n", timebuffer, logbuffer);
        fclose(fp);
    }
}

int getsid(__pid_t pid)
{
    int sid;

    for (sid=0;sid<config.server_maxconn;sid++) {
        if (conn[sid].id==pthread_self()) break;
    }
    if ((sid<0)||(sid>=config.server_maxconn)) {
        return -1;
    }
    return sid;
}

void flushheader(int sid)
{
    char line[256];

    if (conn[sid].dat->out_headdone) return;
    if (!conn[sid].dat->out_status) {
        conn[sid].dat->out_headdone=1;
        return;
    }
#ifdef DEBUG
    logdata("\n[[[ FLUSHING HEADER ]]]\n");
#endif
    if ((conn[sid].dat->out_bodydone)&&(!conn[sid].dat->out_flushed)) {
        conn[sid].dat->out_ContentLength=strlen(conn[sid].dat->out_ReplyData);
    }
    if ((strcasecmp(conn[sid].dat->in_Connection, "Keep-Alive")==0)&&(conn[sid].dat->out_bodydone)) {
        snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Keep-Alive");
    } else {
        snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
    }
    // Nutscrape and Mozilla don't know what a fucking keepalive is
    if ((strcasestr(conn[sid].dat->in_UserAgent, "MSIE")==NULL)) {
        snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
    }
    if (strcasestr(conn[sid].dat->in_Protocol, "HTTP/1.1")!=NULL) {
        snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.1");
    } else {
        snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.0");
    }
    snprintf(line, sizeof(line)-1, "%s %d OK\r\n", conn[sid].dat->out_Protocol, conn[sid].dat->out_status);
    send(conn[sid].socket, line, strlen(line), 0);
    if (strlen(conn[sid].dat->out_CacheControl)) {
        snprintf(line, sizeof(line)-1, "Cache-Control: %s\r\n", conn[sid].dat->out_CacheControl);
        send(conn[sid].socket, line, strlen(line), 0);
    }
    if (strlen(conn[sid].dat->out_Connection)) {
        snprintf(line, sizeof(line)-1, "Connection: %s\r\n", conn[sid].dat->out_Connection);
        send(conn[sid].socket, line, strlen(line), 0);
    }
    if (conn[sid].dat->out_bodydone) {
        snprintf(line, sizeof(line)-1, "Content-Length: %d\r\n", conn[sid].dat->out_ContentLength);
        send(conn[sid].socket, line, strlen(line), 0);
    }
    if (strlen(conn[sid].dat->out_Date)) {
        snprintf(line, sizeof(line)-1, "Date: %s\r\n", conn[sid].dat->out_Date);
        send(conn[sid].socket, line, strlen(line), 0);
    }
    if (strlen(conn[sid].dat->out_Expires)) {
        snprintf(line, sizeof(line)-1, "Expires: %s\r\n", conn[sid].dat->out_Expires);
        send(conn[sid].socket, line, strlen(line), 0);
    }
    if (strlen(conn[sid].dat->out_LastModified)) {
        snprintf(line, sizeof(line)-1, "Last-Modified: %s\r\n", conn[sid].dat->out_LastModified);
        send(conn[sid].socket, line, strlen(line), 0);
    }
    if (strlen(conn[sid].dat->out_Pragma)) {
        snprintf(line, sizeof(line)-1, "Pragma: %s\r\n", conn[sid].dat->out_Pragma);
        send(conn[sid].socket, line, strlen(line), 0);
    }
    snprintf(line, sizeof(line)-1, "Server: %s\r\n", SERVER_NAME);
    send(conn[sid].socket, line, strlen(line), 0);
    if (strlen(conn[sid].dat->out_ContentType)) {
        snprintf(line, sizeof(line)-1, "Content-Type: %s\r\n\r\n", conn[sid].dat->out_ContentType);
        send(conn[sid].socket, line, strlen(line), 0);
    } else {
        snprintf(line, sizeof(line)-1, "Content-Type: text/plain\r\n\r\n");
        send(conn[sid].socket, line, strlen(line), 0);
    }
    conn[sid].dat->out_headdone=1;
#ifdef DEBUG
    logdata("\n[[[ DONE FLUSHING HEADER ]]]\n");
#endif
    return;
}

void flushbuffer(int sid)
{
    char *pTemp=conn[sid].dat->out_ReplyData;
    unsigned int dcount;

    flushheader(sid);
    if (strlen(pTemp)==0) return;
    conn[sid].dat->out_flushed=1;
    while (strlen(pTemp)) {
        dcount=512;
        if (strlen(pTemp)<dcount) dcount=strlen(pTemp);
        send(conn[sid].socket, pTemp, dcount, 0);
        pTemp+=dcount;
    }
    memset(conn[sid].dat->out_ReplyData, 0, sizeof(conn[sid].dat->out_ReplyData));
    return;
}

int prints(const char *format, ...)
{
    unsigned char buffer[2048];
    va_list ap;
    int sid=getsid(getpid());

    if (sid==-1) return -1;
    conn[sid].atime=time((time_t*)0);
    va_start(ap, format);
    vsnprintf(buffer, sizeof(buffer)-1, format, ap);
    va_end(ap);
    if (strlen(conn[sid].dat->out_ReplyData)+sizeof(buffer)>MAX_REPLYSIZE-2) {
        flushbuffer(sid);
    }
    strcat(conn[sid].dat->out_ReplyData, buffer);
    if (strlen(conn[sid].dat->out_ReplyData)+sizeof(buffer)>MAX_REPLYSIZE-2) {
        flushbuffer(sid);
    }
    return 0;
}

int sgets(char *buffer, int max, int fd)
{
    int n=0;
    int rc;
    int sid=getsid(getpid());

    if (sid==-1) return -1;
    conn[sid].atime=time((time_t*)0);
    while (n<max) {
        if ((rc=recv(conn[sid].socket, buffer, 1, 0))<0) {
            conn[sid].dat->out_headdone=1;
            conn[sid].dat->out_bodydone=1;
            conn[sid].dat->out_flushed=1;
            conn[sid].dat->out_ReplyData[0]='\0';
            closeconnect(sid, 1);
        } else if (rc!=1) {
            n= -n;
            break;
        }
        n++;
        if (*buffer=='\n') {
            buffer++;
            break;
        }
        buffer++;
    }
    *buffer=0;
    return n;
}

int closeconnect(int sid, int exitflag)
{
#ifdef WIN32
    char junk[16];
	int rc;
#endif

    flushbuffer(sid);
#ifdef WIN32
    /* shutdown(x,0=recv, 1=send, 2=both) */
	shutdown(conn[sid].socket, 1);
	while ((rc=recv(conn[sid].socket, junk-1, sizeof(junk)-1, 0))>0);
	shutdown(conn[sid].socket, 2);
	closesocket(conn[sid].socket);
#else
    close(conn[sid].socket);
#endif
    if (exitflag) {
        logaccess(4, "Closing [%u][%u]", conn[sid].id, conn[sid].socket);
#ifdef WIN32
        CloseHandle(conn[sid].handle);
#endif
        if (conn[sid].PostData!=NULL) free(conn[sid].PostData);
        if (conn[sid].dat!=NULL) free(conn[sid].dat);
        memset((char *)&conn[sid], 0, sizeof(conn[sid]));
        pthread_exit(0);
    }
    return 0;
}

#ifndef WIN32
int daemon(int nochdir, int noclose)
{
    int fd;

    switch (fork()) {
        case -1: return -1;
        case 0:  break;
        default: _exit(0);
    }
    if (setsid()==-1) return -1;
    if (noclose) return 0;
    fd=open(_PATH_DEVNULL, O_RDWR, 0);
    if (fd!=-1) {
        dup2(fd, STDIN_FILENO);
        dup2(fd, STDOUT_FILENO);
        dup2(fd, STDERR_FILENO);
        if (fd>2) close(fd);
    }
    return 0;
}
#endif

void server_shutdown()
{
    logaccess(0, "Stopping %s", SERVER_NAME);
    close(ListenSocket);
    fflush(stdout);
    exit(0);
}

#ifdef WIN32
void logsegv(int sig)
{
	switch (sig) {
		case 2:
			logerror("SIGINT [%d] Interrupt", sig);
			break;
		case 4:
			logerror("SIGILL [%d] Illegal Instruction", sig);
			break;
		case 8:
			logerror("SIGFPE [%d] Floating Point Exception", sig);
			break;
		case 11:
			logerror("SIGSEGV [%d] Segmentation Violation", sig);
			break;
		case 15:
			logerror("SIGTERM [%d] Software Termination signal from kill", sig);
			break;
		case 22:
			logerror("SIGABRT [%d] Abnormal Termination", sig);
			break;
		default:
			logerror("Unknown signal [%d] received", sig);
	}
//	closeconnect(sid, 1);
	exit(-1);
}
#endif

void setsigs()
{
#ifdef WIN32
    #ifndef DEBUG
//	SetErrorMode(SEM_FAILCRITICALERRORS|SEM_NOGPFAULTERRORBOX|SEM_NOOPENFILEERRORBOX);
#endif
	signal(SIGINT, logsegv);
	signal(SIGILL, logsegv);
	signal(SIGFPE, logsegv);
	signal(SIGSEGV, logsegv);
	signal(SIGTERM, logsegv);
	signal(SIGABRT, logsegv);
#else
    sigset_t blockmask;
    sigset_t emptymask;
    struct sigaction sa;

    sigemptyset(&emptymask);
    sigemptyset(&blockmask);
    sigaddset(&blockmask, SIGCHLD);
    sigaddset(&blockmask, SIGHUP);
    sigaddset(&blockmask, SIGALRM);
    memset(&sa, 0, sizeof(sa));
    sa.sa_mask = blockmask;
    sa.sa_handler = server_shutdown;
    sigaction(SIGINT, &sa, NULL);
    sa.sa_handler = server_shutdown;
    sigaction(SIGTERM, &sa, NULL);
    sa.sa_handler = SIG_IGN;
    sigaction(SIGCHLD, &sa, NULL);
    sa.sa_handler = SIG_IGN;
    sigaction(SIGPIPE, &sa, NULL);
#endif
}

int sockinit()
{
    struct hostent *hp;
    struct sockaddr_in sin;
    int i;

#ifdef WIN32
    if (WSAStartup(0x202, &wsaData)) {
		MessageBox(0, "Winsock 2 initialization failed.", APPTITLE, MB_ICONERROR);
		WSACleanup();
		exit(0);
	}
#else
    printf("Binding to 'http://%s:%d/'...", config.server_hostname, config.server_port);
    fflush(stdout);
#endif
    ListenSocket=socket(AF_INET, SOCK_STREAM, 0);
    memset((char *)&sin, 0, sizeof(sin));
    sin.sin_family=AF_INET;
    if (strcasecmp("ANY", config.server_hostname)==0) {
        sin.sin_addr.s_addr=htonl(INADDR_ANY);
    } else {
        hp=gethostbyname(config.server_hostname);
        memmove((char *)&sin.sin_addr, hp->h_addr, hp->h_length);
    }
    sin.sin_port=htons((unsigned short)config.server_port);
    i=0;
    while (bind(ListenSocket, (struct sockaddr *)&sin, sizeof(sin))<0) {
        sleep(5);
        i++;
        if (i>6) {
            logerror("bind() error [%s:%d]", config.server_hostname, config.server_port);
#ifdef WIN32
            MessageBox(0, "Bind error: Null httpd could not bind itself to the specified port.", APPTITLE, MB_ICONERROR);
#else
            perror("\nBind error");
#endif
            exit(0);
        }
    }
    if (listen(ListenSocket, 50)<0) {
        logerror("listen() error");
#ifdef WIN32
        closesocket(ListenSocket);
#else
        close(ListenSocket);
#endif
        exit(0);
    }
#ifndef WIN32
    printf("OK.\r\n");
    daemon(0, 0);
#endif
    setsigs();
    return 0;
}

/****************************************************************************
 *	CGIkilltimer()
 *
 *	Purpose	: Function to kill retarded child processes
 *	Args	: None
 *	Returns	: void
 *	Notes	: Created as a thread in Win32
 ***************************************************************************/
#ifdef WIN32
void CGIkilltimer(void *x)
{
	int idleseconds;

	for (;;) {
		sleep(5);
		idleseconds=time((time_t*)0)-conn[0].atime;
		if (idleseconds>config.server_maxidle) break;
	}
	logaccess(4, "CGI is idle for more than %d seconds.  Terminating.", config.server_maxidle);
	exit(0);
	return;
}
#endif

/****************************************************************************
 *	init()
 *
 *	Purpose	: Test external dependencies and initialize socket interface
 *	Args	: None
 *	Returns	: void
 *	Notes	: None
 ***************************************************************************/
void init()
{
    printf("%s\r\n", SERVER_NAME);
    pthread_mutex_init(&Lock.Crypt, NULL);
    pthread_mutex_init(&Lock.Global, NULL);
    pthread_mutex_init(&Lock.SQL, NULL);
// 	if (config_read()!=0) {
// #ifdef WIN32
// 		MessageBox(0, "Error reading configuration file", APPTITLE, MB_ICONERROR);
// #else
// 		printf("\r\nError reading configuration file\r\n");
// #endif
// 		exit(0);
// 	}
    logaccess(0, "Starting %s", SERVER_NAME);
    conn=calloc(config.server_maxconn, sizeof(CONNECTION));
    sockinit();
}

#ifdef WIN32
void WSAReaper(void *x)
{
	short int connections;
	short int i;
	char junk[10];
	int rc;
	time_t ctime;

	for (;;) {
		connections=0;
		ctime=time((time_t)0);
		for (i=0;i<config.server_maxconn;i++) {
 			if (conn[i].id==0) continue;
			GetExitCodeThread((HANDLE)conn[i].handle, &rc);
			if (rc!=STILL_ACTIVE) continue;
			connections++;
			if ((ctime-conn[i].atime<config.server_maxidle)||(conn[i].atime==0)) continue;
			logaccess(4, "Reaping socket %u from pid %u (runtime ~= %d seconds)", conn[i].socket, conn[i].id, ctime-conn[i].atime);
			shutdown(conn[i].socket, 2);
			while (recv(conn[i].socket, junk, sizeof(junk), 0)>0) { };
			closesocket(conn[i].socket);
			TerminateThread(conn[i].handle, (DWORD)&rc);
			CloseHandle(conn[i].handle);
			if (conn[i].PostData!=NULL) free(conn[i].PostData);
			if (conn[i].dat!=NULL) free(conn[i].dat);
			memset((char *)&conn[i], 0, sizeof(conn[i]));
		}
		Sleep(100);
	}
	return;
}
#endif

#ifdef WIN32
unsigned _stdcall htloop(void *x)
#else
unsigned htloop(void *x)
#endif
{
    int sid=(int)x;

    klee_make_symbolic(&conn, sizeof(conn), "conn");

//    klee_make_symbolic(&conn[sid].atime, sizeof(conn[sid].atime), "conn[sid].atime");
//	klee_make_symbolic(&conn[sid].ctime, sizeof(conn[sid].ctime), "conn[sid].ctime");
//	klee_make_symbolic(&conn[sid].ClientAddr, sizeof(conn[sid].ClientAddr), "conn[sid].ClientAddr");
//	klee_make_symbolic(&conn[sid].socket, sizeof(conn[sid].socket), "conn[sid].socket");
//	klee_make_symbolic(&conn[sid].id, sizeof(conn[sid].id), "conn[sid].id");
//	klee_make_symbolic(&conn[sid].handle, sizeof(conn[sid].handle), "conn[sid].handle");
//	klee_make_symbolic(&conn[sid].handle, sizeof(conn[sid].handle), "conn[sid].handle");
//	klee_make_symbolic(conn[sid].PostData, sizeof(*conn[sid].PostData), "conn[sid].PostData");


    // logaccess(4, "New client [%u][%u]", conn[sid].id, conn[sid].socket);
    // for (;;) {
        // if (conn[sid].PostData!=NULL) free(conn[sid].PostData);
        // if (conn[sid].dat!=NULL) free(conn[sid].dat);
        // conn[sid].dat=calloc(1, sizeof(CONNDATA));
        // conn[sid].dat->out_ContentLength=-1;
        // conn[sid].atime=time((time_t)0);
        // conn[sid].ctime=time((time_t)0);
        // conn[sid].PostData=NULL;

        dorequest(sid);
//		if (conn[sid].dat->out_status!=304) {
        prints("\r\n\r\n");
//		}
        conn[sid].dat->out_bodydone=1;
        flushbuffer(sid);
        // if (strcasestr(conn[sid].dat->out_Connection, "close")!=NULL) break;
    // }
    // closeconnect(sid, 0);
    // logaccess(4, "Closing [%u][%u]", conn[sid].id, conn[sid].socket);

    if (conn[sid].PostData!=NULL) free(conn[sid].PostData);
    if (conn[sid].dat!=NULL) free(conn[sid].dat);
    memset((char *)&conn[sid], 0, sizeof(conn[sid]));
    pthread_exit(0);
    return 0;
}

/****************************************************************************
 *	accept_loop()
 *
 *	Purpose	: Function to handle incoming socket connections
 *	Args	: None
 *	Returns	: void
 *	Notes	: Created as a thread in Win32
 ***************************************************************************/
void accept_loop(void *x)
{
    pthread_attr_t thr_attr;
    int fromlen;
    int i;

    if (pthread_attr_init(&thr_attr)) {
        logerror("pthread_attr_init()");
        exit(1);
    }
    if (pthread_attr_setstacksize(&thr_attr, 65536L)) {
        logerror("pthread_attr_setstacksize()");
        exit(1);
    }
    for (;;) {
        for (i=0;;i++) {
            if (i>=config.server_maxconn) {
                sleep(1);
                i=0;
                continue;
            }
            if (conn[i].socket==0) break;
        }
        if (conn[i].PostData!=NULL) free(conn[i].PostData);
        if (conn[i].dat!=NULL) free(conn[i].dat);
        memset((char *)&conn[i], 0, sizeof(conn[i]));
        fromlen=sizeof(conn[i].ClientAddr);
        conn[i].socket=accept(ListenSocket, (struct sockaddr *)&conn[i].ClientAddr, &fromlen);
#ifdef WIN32
        if (conn[i].socket==INVALID_SOCKET) {
			logerror("accept() died...  restarting...");
			closesocket(ListenSocket);
			WSACleanup();
			exit(0);
#else
        if (conn[i].socket<0) {
            continue;
#endif
        } else {
            conn[i].id=1;
            // htloop((void *)i);
            if (pthread_create(&conn[i].handle, &thr_attr, htloop, (void *)i)==-1) {
                logerror("htloop() failed...");
                exit(0);
            }
        }
    }
    return;
}
