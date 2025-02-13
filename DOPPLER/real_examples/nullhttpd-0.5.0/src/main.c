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
#include "main.h"
/****************************************************************************
 *	dorequest()
 *
 *	Purpose	: Authenticate and direct the request to the correct function
 *	Args	: None
 *	Returns	: void
 *	Notes	: None
 ***************************************************************************/
static int ListenSocket;
//
//unsigned int htloop(int x)
//{
//	int sid=x;
//
//	conn[sid].id=pthread_self();
//	// logaccess(4, "New client [%u][%u]", conn[sid].id, conn[sid].socket);
//	for (;;) {
//		if (conn[sid].PostData!=NULL) free(conn[sid].PostData);
//		if (conn[sid].dat!=NULL) free(conn[sid].dat);
//		conn[sid].dat=calloc(1, sizeof(CONNDATA));
//		conn[sid].dat->out_ContentLength=-1;
//		conn[sid].atime=time((time_t)0);
//		conn[sid].ctime=time((time_t)0);
//		conn[sid].PostData=NULL;
//		dorequest(sid);
//
//		conn[sid].dat->out_bodydone=1;
//		flushbuffer(sid);
//		if (strcasestr(conn[sid].dat->out_Connection, "close")!=NULL) break;
//	}
//	closeconnect(sid, 0);
//	// logaccess(4, "Closing [%u][%u]", conn[sid].id, conn[sid].socket);
//	if (conn[sid].PostData!=NULL) free(conn[sid].PostData);
//	if (conn[sid].dat!=NULL) free(conn[sid].dat);
//	memset((char *)&conn[sid], 0, sizeof(conn[sid]));
//	pthread_exit(0);
//	return 0;
//}

void dorequest(int sid)
{
	unsigned char file[255];

    if (read_header(sid)<0) {
		closeconnect(sid, 1);
		return;
	}

    exit(0);

	// logaccess(2, "%s - HTTP Request: %s %s", conn[sid].dat->in_RemoteAddr, conn[sid].dat->in_RequestMethod, conn[sid].dat->in_RequestURI);
	snprintf(file, sizeof(file)-1, "%s%s", config.server_htdocs_dir, conn[sid].dat->in_RequestURI);
	snprintf(conn[sid].dat->out_ContentType, sizeof(conn[sid].dat->out_ContentType)-1, "text/html");

	if (strncmp(conn[sid].dat->in_RequestURI, "/cgi-bin/",    9)==0) cgi_main();
	else if (sendfile(sid, file)==0) return;
	else if (dirlist(sid)==0) return;
	else {
		send_header(sid, 0, 200, "OK", "1", "text/html", -1, -1);
		prints("<BR><CENTER>The file or function '%s' could not be found.</CENTER>\n", conn[sid].dat->in_RequestURI);
		// logerror("%s - Incorrect function call '%s'", conn[sid].dat->in_RemoteAddr, conn[sid].dat->in_RequestURI);
	}
	return;
}


/****************************************************************************
 *	main()
 *
 *	Purpose	: Program entry point (UNIX) and call accept loop
 *	Args	: Command line parameters (if any)
 *	Returns	: Exit status of program
 *	Notes	: None
 ***************************************************************************/
int main(int argc, char *argv[])
{
	// printf("%s\r\n", SERVER_NAME);

	// logaccess(0, "Starting %s", SERVER_NAME);
	// conn=calloc(config.server_maxconn, sizeof(CONNECTION));
	// sockinit();

	// pthread_attr_t thr_attr;
	int fromlen;
	int i;

//	if (pthread_attr_init(&thr_attr)) {
//		// logerror("pthread_attr_init()");
//		exit(1);
//	}
//	if (pthread_attr_setstacksize(&thr_attr, 65536L)) {
//		// logerror("pthread_attr_setstacksize()");
//		exit(1);
//	}

    klee_make_symbolic(&fromlen, sizeof(fromlen), "fromlen");
    klee_make_symbolic(&i, sizeof(i), "i");

    unsigned int yy = htloop(i);

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
		if (conn[i].socket<0) {
			continue;
		} else {
			conn[i].id=1;
			unsigned int yy = htloop(i);
			// if (pthread_create(&conn[i].handle, &thr_attr, htloop, (void *)i)==-1) {
			// 	logerror("htloop() failed...");
			// 	exit(0);
			// }
		}
	}

	return 0;
}

#define RFC1123FMT "%a, %d %b %Y %H:%M:%S GMT"
//
//void printerror(int sid, int status, char* title, char* text)
//{
//	send_header(sid, 0, 200, "OK", "1", "text/html", -1, -1);
//	prints("<HTML><HEAD><TITLE>%d %s</TITLE></HEAD>\n", status, title);
//	prints("<BODY BGCOLOR=#F0F0F0 TEXT=#000000 LINK=#0000FF ALINK=#0000FF VLINK=#0000FF>\n");
//	prints("<H1>%d %s</H1>\n", status, title);
//	prints("%s\n", text);
//	prints("<HR>\n<ADDRESS>%s</ADDRESS>\n</BODY></HTML>\n", SERVER_NAME);
//	conn[sid].dat->out_bodydone=1;
//	flushbuffer(sid);
//	closeconnect(sid, 1);
//	return;
//}
//
//char *get_mime_type(char *name)
//{
//	char *mime_types[40][2]={
//		{ ".html", "text/html" },
//		{ ".htm",  "text/html" },
//		{ ".shtml","text/html" },
//		{ ".css",  "text/css" },
//		{ ".txt",  "text/plain" },
//		{ ".mdb",  "application/msaccess" },
//		{ ".xls",  "application/msexcel" },
//		{ ".doc",  "application/msword" },
//		{ ".exe",  "application/octet-stream" },
//		{ ".pdf",  "application/pdf" },
//		{ ".rtf",  "application/rtf" },
//		{ ".tgz",  "application/x-compressed" },
//		{ ".gz",   "application/x-compressed" },
//		{ ".z",    "application/x-compress" },
//		{ ".swf",  "application/x-shockwave-flash" },
//		{ ".tar",  "application/x-tar" },
//		{ ".rar",  "application/x-rar-compressed" },
//		{ ".zip",  "application/x-zip-compressed" },
//		{ ".ra",   "audio/x-pn-realaudio" },
//		{ ".ram",  "audio/x-pn-realaudio" },
//		{ ".wav",  "audio/x-wav" },
//		{ ".gif",  "image/gif" },
//		{ ".jpeg", "image/jpeg" },
//		{ ".jpe",  "image/jpeg" },
//		{ ".jpg",  "image/jpeg" },
//		{ ".png",  "image/png" },
//		{ ".avi",  "video/avi" },
//		{ ".mp3",  "video/mpeg" },
//		{ ".mpeg", "video/mpeg" },
//		{ ".mpg",  "video/mpeg" },
//		{ ".qt",   "video/quicktime" },
//		{ ".mov",  "video/quicktime" },
//		{ "",      "" }
//	};
//	char *extension;
//	int i;
//
//	extension=strrchr(name, '.');
//	if (extension==NULL) {
//		return "text/plain";
//	}
//	i=0;
//	while (strlen(mime_types[i][0])>0) {
//		if (strcmp(extension, mime_types[i][0])==0) {
//			return mime_types[i][1];
//		}
//		i++;
//	}
//	return "application/octet-stream";
//}
//
//void ReadPOSTData(int sid) {
//	char *pPostData;
//	int rc=0;
//	int x=0;
//
//	if (conn[sid].PostData!=NULL) {
//		free(conn[sid].PostData);
//		conn[sid].PostData=NULL;
//	}
//	conn[sid].PostData=calloc(conn[sid].dat->in_ContentLength+1024, sizeof(char));
//	if (conn[sid].PostData==NULL) {
//		// logerror("Memory allocation error while reading POST data.");
//		closeconnect(sid, 1);
//	}
//	pPostData=conn[sid].PostData;
//	/* reading beyond PostContentLength is required for IE5.5 and NS6 (HTTP 1.1) */
//	klee_make_symbolic(&conn[sid].atime, sizeof(conn[sid].atime), "conn[sid].atime");
//	klee_make_symbolic(&conn[sid].ctime, sizeof(conn[sid].ctime), "conn[sid].ctime");
//	klee_make_symbolic(&conn[sid].ClientAddr, sizeof(conn[sid].ClientAddr), "conn[sid].ClientAddr");
//	klee_make_symbolic(&conn[sid].socket, sizeof(conn[sid].socket), "conn[sid].socket");
//	klee_make_symbolic(&conn[sid].id, sizeof(conn[sid].id), "conn[sid].id");
//	klee_make_symbolic(&conn[sid].handle, sizeof(conn[sid].handle), "conn[sid].handle");
//	klee_make_symbolic(conn[sid].PostData, sizeof(*conn[sid].PostData), "conn[sid].PostData");
//	// pthread_t handle;
//	// unsigned long int id;
//	// short int socket;
//	// struct sockaddr_in ClientAddr;
//	// time_t ctime; // Creation time
//	// time_t atime; // Last Access time
//	// char *PostData;
//	do {
//		rc=recv(conn[sid].socket, pPostData, 1024, 0);
//		if (rc==-1) {
//			closeconnect(sid, 1);
//			return;
//		}
//		pPostData+=rc;
//		x+=rc;
//	} while ((rc==1024)||(x<conn[sid].dat->in_ContentLength));
//	conn[sid].PostData[conn[sid].dat->in_ContentLength]='\0';
//}
//
//int read_header(int sid)
//{
//	char line[2048];
//	char *pTemp;
//	time_t x;
//
//	strncpy(conn[sid].dat->in_RemoteAddr, inet_ntoa(conn[sid].ClientAddr.sin_addr), sizeof(conn[sid].dat->in_RemoteAddr)-1);
//	x=time((time_t*)0);
//	do {
//		memset(line, 0, sizeof(line));
//		sgets(line, sizeof(line)-1, conn[sid].socket);
//		striprn(line);
//	} while ((strlen(line)==0)&&((time((time_t)0)-x)<30));
//	if ((strlen(line)==0)&&((time((time_t)0)-x)>=30)) {
//		closeconnect(sid, 1);
//	}
//	if (strlen(line)==0)
//		// printerror(sid, 400, "Bad Request", "No Request Found.");
//	if (sscanf(line, "%[^ ] %[^ ] %[^ ]", conn[sid].dat->in_RequestMethod, conn[sid].dat->in_RequestURI, conn[sid].dat->in_Protocol)!=3)
//		// printerror(sid, 400, "Bad Request", "Can't Parse Request.");
//	pTemp=conn[sid].dat->in_RequestMethod;
//	while (*pTemp) { *pTemp=toupper(*pTemp); pTemp++; };
//	while (strlen(line)>0) {
//		sgets(line, sizeof(line)-1, conn[sid].socket);
//		while ((line[strlen(line)-1]=='\n')||(line[strlen(line)-1]=='\r')) line[strlen(line)-1]='\0';
//		if (strncasecmp(line, "Connection: ", 12)==0)
//			strncpy(conn[sid].dat->in_Connection, (char *)&line+12, sizeof(conn[sid].dat->in_Connection)-1);
//		if (strncasecmp(line, "Content-Length: ", 16)==0)
//			conn[sid].dat->in_ContentLength=atoi((char *)&line+16);
//
//			// position of the vulnerabiltiy
//			// conn[sid].dat->in_ContentLength can be a negative value
//
//			// if (conn[sid].dat->in_ContentLength<0) {
//			// 	// Negative Content-Length?  If so, the client is either broken or malicious.
//			// 	// Thanks to <ilja@idefense.be> for spotting this one.
//			// 	logerror("ERROR: negative Content-Length of %d provided by client.", conn[sid].dat->in_ContentLength);
//			// 	conn[sid].dat->in_ContentLength=0;
//			// }
//		if (strncasecmp(line, "Cookie: ", 8)==0)
//			strncpy(conn[sid].dat->in_Cookie, (char *)&line+8, sizeof(conn[sid].dat->in_Cookie)-1);
//		if (strncasecmp(line, "Host: ", 6)==0)
//			strncpy(conn[sid].dat->in_Host, (char *)&line+6, sizeof(conn[sid].dat->in_Host)-1);
//		if (strncasecmp(line, "If-Modified-Since: ", 19)==0)
//			strncpy(conn[sid].dat->in_IfModifiedSince, (char *)&line+19, sizeof(conn[sid].dat->in_IfModifiedSince)-1);
//		if (strncasecmp(line, "User-Agent: ", 12)==0)
//			strncpy(conn[sid].dat->in_UserAgent, (char *)&line+12, sizeof(conn[sid].dat->in_UserAgent)-1);
//	}
//	if ((strcmp(conn[sid].dat->in_RequestMethod, "GET")!=0)&&(strcmp(conn[sid].dat->in_RequestMethod, "POST")!=0)) {
//		// printerror(sid, 501, "Not Implemented", "That method is not implemented.");
//		closeconnect(sid, 1);
//		return -1;
//	}
//	if (strcmp(conn[sid].dat->in_RequestMethod, "POST")==0) {
//		if (conn[sid].dat->in_ContentLength<MAX_POSTSIZE) {
//			ReadPOSTData(sid);
//		} else {
//			// try to print an error : note the inbuffer being full may block us
//			// FIXME: this is causing the children to segfault in win32
//			// printerror(sid, 413, "Bad Request", "Request entity too large.");
//			// logerror("%s - Large POST (>%d bytes) disallowed", conn[sid].dat->in_RemoteAddr, MAX_POSTSIZE);
//			closeconnect(sid, 1);
//			return -1;
//		}
//	}
//	if (conn[sid].dat->in_RequestURI[0]!='/') {
//		// printerror(sid, 400, "Bad Request", "Bad filename.");
//	}
//	if (strchr(conn[sid].dat->in_RequestURI, '?')!=NULL) {
//		strncpy(conn[sid].dat->in_QueryString, strchr(conn[sid].dat->in_RequestURI, '?')+1, sizeof(conn[sid].dat->in_QueryString)-1);
//	}
//	return 0;
//}
//
//void send_header(int sid, int cacheable, int status, char *title, char *extra_header, char *mime_type, int length, time_t mod)
//{
//	char timebuf[100];
//	time_t now;
//
//	if (status) {
//		conn[sid].dat->out_status=status;
//	} else {
//		conn[sid].dat->out_status=200;
//	}
//	if (length>=0) {
//		conn[sid].dat->out_ContentLength=length;
//	}
//	if (mod!=(time_t)-1) {
//		strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&mod));
//		snprintf(conn[sid].dat->out_LastModified, sizeof(conn[sid].dat->out_LastModified)-1, "%s", timebuf);
//	}
//	now=time((time_t*)0);
//	strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
//	snprintf(conn[sid].dat->out_Date, sizeof(conn[sid].dat->out_Date)-1, "%s", timebuf);
//	if (cacheable) {
//		snprintf(conn[sid].dat->out_CacheControl, sizeof(conn[sid].dat->out_CacheControl)-1, "public");
//		snprintf(conn[sid].dat->out_Pragma, sizeof(conn[sid].dat->out_Pragma)-1, "public");
//	} else {
//		snprintf(conn[sid].dat->out_CacheControl, sizeof(conn[sid].dat->out_CacheControl)-1, "no-store");
//		snprintf(conn[sid].dat->out_Expires, sizeof(conn[sid].dat->out_Expires)-1, "%s", timebuf);
//		snprintf(conn[sid].dat->out_Pragma, sizeof(conn[sid].dat->out_Pragma)-1, "no-cache");
//	}
//	if (extra_header!=(char*)0) {
//		snprintf(conn[sid].dat->out_ContentType, sizeof(conn[sid].dat->out_ContentType)-1, "%s", mime_type);
//	} else {
//		snprintf(conn[sid].dat->out_ContentType, sizeof(conn[sid].dat->out_ContentType)-1, "text/html");
//	}
//}
//
//void send_fileheader(int sid, int cacheable, int status, char *title, char *extra_header, char *mime_type, int length, time_t mod)
//{
//	char timebuf[100];
//	time_t now;
//
//	if (status) {
//		conn[sid].dat->out_status=status;
//	} else {
//		conn[sid].dat->out_status=200;
//	}
//	if (strcasestr(conn[sid].dat->in_Protocol, "HTTP/1.1")!=NULL) {
//		snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.1");
//	} else {
//		snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.0");
//	}
//	if (strcasecmp(conn[sid].dat->in_Connection, "Keep-Alive")==0) {
//		snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Keep-Alive");
//	} else {
//		snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
//	}
//	// Nutscrape and Mozilla don't know what a fucking keepalive is
//	if ((strcasestr(conn[sid].dat->in_UserAgent, "MSIE")==NULL)) {
//		snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
//	}
//	prints("%s %d OK\r\n", conn[sid].dat->out_Protocol, conn[sid].dat->out_status);
//	prints("Connection: %s\r\n", conn[sid].dat->out_Connection);
//	prints("Server: %s\r\n", SERVER_NAME);
//	if ((length>=0)&&(status!=304)) {
//		prints("Content-Length: %d\r\n", length);
//	}
//	now=time((time_t*)0);
//	strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
//	prints("Date: %s\r\n", timebuf);
//	if (mod!=(time_t)-1) {
//		strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&mod));
//		prints("Last-Modified: %s\r\n", timebuf);
//	}
//	if (cacheable) {
//		now=time((time_t*)0)+604800;
//		strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
//		prints("Expires: %s\r\n", timebuf);
//		prints("Cache-Control: public\r\n");
//		prints("Pragma: public\r\n");
//	} else {
//		now=time((time_t*)0);
//		strftime(timebuf, sizeof(timebuf), RFC1123FMT, gmtime(&now));
//		prints("Expires: %s\r\n", timebuf);
//		prints("Cache-Control: no-store\r\n");
//		prints("Pragma: no-cache\r\n");
//	}
//	if (extra_header!=(char*)0) {
//		prints("Content-Type: %s\r\n\r\n", mime_type);
//	} else {
//		prints("Content-Type: text/html\r\n\r\n");
//	}
//	conn[sid].dat->out_headdone=1;
//	flushbuffer(sid);
//}

// void logaccess(int loglevel, const char *format, ...)
// {
// 	char logbuffer[1024];
// 	char timebuffer[100];
// 	char file[200];
// 	va_list ap;
// 	FILE *fp;
// 	struct timeval ttime;
// 	struct timezone tzone;

// 	if (loglevel>config.server_loglevel) return;
// 	snprintf(file, sizeof(file)-1, "%s/access.log", config.server_etc_dir);
// 	fixslashes(file);
// 	fp=fopen(file, "a");
// 	if (fp!=NULL) {
// 		va_start(ap, format);
// 		vsnprintf(logbuffer, sizeof(logbuffer)-1, format, ap);
// 		va_end(ap);
// 		gettimeofday(&ttime, &tzone);
// 		strftime(timebuffer, sizeof(timebuffer), "%b %d %H:%M:%S", localtime(&ttime.tv_sec));
// 		fprintf(fp, "%s - [%d] %s\n", timebuffer, loglevel, logbuffer);
// 		fclose(fp);
// 	}
// }

// void logerror(const char *format, ...)
// {
// 	char logbuffer[1024];
// 	char timebuffer[100];
// 	char file[200];
// 	va_list ap;
// 	FILE *fp;
// 	struct timeval ttime;
// 	struct timezone tzone;

// 	snprintf(file, sizeof(file)-1, "%s/error.log", config.server_etc_dir);
// 	fixslashes(file);
// 	fp=fopen(file, "a");
// 	if (fp!=NULL) {
// 		va_start(ap, format);
// 		vsnprintf(logbuffer, sizeof(logbuffer)-1, format, ap);
// 		va_end(ap);
// 		gettimeofday(&ttime, &tzone);
// 		strftime(timebuffer, sizeof(timebuffer), "%b %d %H:%M:%S", localtime(&ttime.tv_sec));
// 		fprintf(fp, "%s - %s\n", timebuffer, logbuffer);
// 		fclose(fp);
// 	}
// }

//int getsid(__pid_t pid)
//{
//	int sid;
//
//	for (sid=0;sid<config.server_maxconn;sid++) {
//		if (conn[sid].id==pthread_self()) break;
//	}
//	if ((sid<0)||(sid>=config.server_maxconn)) {
//		return -1;
//	}
//	return sid;
//}
//
//void flushheader(int sid)
//{
//	char line[256];
//
//	if (conn[sid].dat->out_headdone) return;
//	if (!conn[sid].dat->out_status) {
//		conn[sid].dat->out_headdone=1;
//		return;
//	}
//
//	if ((conn[sid].dat->out_bodydone)&&(!conn[sid].dat->out_flushed)) {
//		conn[sid].dat->out_ContentLength=strlen(conn[sid].dat->out_ReplyData);
//	}
//	if ((strcasecmp(conn[sid].dat->in_Connection, "Keep-Alive")==0)&&(conn[sid].dat->out_bodydone)) {
//		snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Keep-Alive");
//	} else {
//		snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
//	}
//	// Nutscrape and Mozilla don't know what a fucking keepalive is
//	if ((strcasestr(conn[sid].dat->in_UserAgent, "MSIE")==NULL)) {
//		snprintf(conn[sid].dat->out_Connection, sizeof(conn[sid].dat->out_Connection)-1, "Close");
//	}
//	if (strcasestr(conn[sid].dat->in_Protocol, "HTTP/1.1")!=NULL) {
//		snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.1");
//	} else {
//		snprintf(conn[sid].dat->out_Protocol, sizeof(conn[sid].dat->out_Protocol)-1, "HTTP/1.0");
//	}
//	snprintf(line, sizeof(line)-1, "%s %d OK\r\n", conn[sid].dat->out_Protocol, conn[sid].dat->out_status);
//	send(conn[sid].socket, line, strlen(line), 0);
//	if (strlen(conn[sid].dat->out_CacheControl)) {
//		snprintf(line, sizeof(line)-1, "Cache-Control: %s\r\n", conn[sid].dat->out_CacheControl);
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	if (strlen(conn[sid].dat->out_Connection)) {
//		snprintf(line, sizeof(line)-1, "Connection: %s\r\n", conn[sid].dat->out_Connection);
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	if (conn[sid].dat->out_bodydone) {
//		snprintf(line, sizeof(line)-1, "Content-Length: %d\r\n", conn[sid].dat->out_ContentLength);
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	if (strlen(conn[sid].dat->out_Date)) {
//		snprintf(line, sizeof(line)-1, "Date: %s\r\n", conn[sid].dat->out_Date);
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	if (strlen(conn[sid].dat->out_Expires)) {
//		snprintf(line, sizeof(line)-1, "Expires: %s\r\n", conn[sid].dat->out_Expires);
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	if (strlen(conn[sid].dat->out_LastModified)) {
//		snprintf(line, sizeof(line)-1, "Last-Modified: %s\r\n", conn[sid].dat->out_LastModified);
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	if (strlen(conn[sid].dat->out_Pragma)) {
//		snprintf(line, sizeof(line)-1, "Pragma: %s\r\n", conn[sid].dat->out_Pragma);
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	snprintf(line, sizeof(line)-1, "Server: %s\r\n", SERVER_NAME);
//	send(conn[sid].socket, line, strlen(line), 0);
//	if (strlen(conn[sid].dat->out_ContentType)) {
//		snprintf(line, sizeof(line)-1, "Content-Type: %s\r\n\r\n", conn[sid].dat->out_ContentType);
//		send(conn[sid].socket, line, strlen(line), 0);
//	} else {
//		snprintf(line, sizeof(line)-1, "Content-Type: text/plain\r\n\r\n");
//		send(conn[sid].socket, line, strlen(line), 0);
//	}
//	conn[sid].dat->out_headdone=1;
//
//	return;
//}
//
//void flushbuffer(int sid)
//{
//	char *pTemp=conn[sid].dat->out_ReplyData;
//	unsigned int dcount;
//
//	flushheader(sid);
//	if (strlen(pTemp)==0) return;
//	conn[sid].dat->out_flushed=1;
//	while (strlen(pTemp)) {
//		dcount=512;
//		if (strlen(pTemp)<dcount) dcount=strlen(pTemp);
//		send(conn[sid].socket, pTemp, dcount, 0);
//		pTemp+=dcount;
//	}
//	memset(conn[sid].dat->out_ReplyData, 0, sizeof(conn[sid].dat->out_ReplyData));
//	return;
//}

//int prints(const char *format, ...)
//{
//	unsigned char buffer[2048];
//	va_list ap;
//	int sid=getsid(getpid());
//
//	if (sid==-1) return -1;
//	conn[sid].atime=time((time_t*)0);
//	va_start(ap, format);
//	vsnprintf(buffer, sizeof(buffer)-1, format, ap);
//	va_end(ap);
//	if (strlen(conn[sid].dat->out_ReplyData)+sizeof(buffer)>MAX_REPLYSIZE-2) {
//		flushbuffer(sid);
//	}
//	strcat(conn[sid].dat->out_ReplyData, buffer);
//	if (strlen(conn[sid].dat->out_ReplyData)+sizeof(buffer)>MAX_REPLYSIZE-2) {
//		flushbuffer(sid);
//	}
//	return 0;
//}

//int sgets(char *buffer, int max, int fd)
//{
//	int n=0;
//	int rc;
//	int sid=getsid(getpid());
//
//	if (sid==-1) return -1;
//	conn[sid].atime=time((time_t*)0);
//	while (n<max) {
//		if ((rc=recv(conn[sid].socket, buffer, 1, 0))<0) {
//			conn[sid].dat->out_headdone=1;
//			conn[sid].dat->out_bodydone=1;
//			conn[sid].dat->out_flushed=1;
//			conn[sid].dat->out_ReplyData[0]='\0';
//			closeconnect(sid, 1);
//		} else if (rc!=1) {
//			n= -n;
//			break;
//		}
//		n++;
//		if (*buffer=='\n') {
//			buffer++;
//			break;
//		}
//		buffer++;
//	}
//	*buffer=0;
//	return n;
//}
//
//int closeconnect(int sid, int exitflag)
//{
//
//
//	flushbuffer(sid);
//
//	close(conn[sid].socket);
//
//	if (exitflag) {
//	// logaccess(4, "Closing [%u][%u]", conn[sid].id, conn[sid].socket);
//		if (conn[sid].PostData!=NULL) free(conn[sid].PostData);
//		if (conn[sid].dat!=NULL) free(conn[sid].dat);
//		memset((char *)&conn[sid], 0, sizeof(conn[sid]));
//		pthread_exit(0);
//	}
//	return 0;
//}
//
//
//void server_shutdown()
//{
//	// logaccess(0, "Stopping %s", SERVER_NAME);
//	close(ListenSocket);
//	fflush(stdout);
//	exit(0);
//}
//
//
//
//void setsigs()
//{
//
//	sigset_t blockmask;
//	sigset_t emptymask;
//	struct sigaction sa;
//
//	sigemptyset(&emptymask);
//	sigemptyset(&blockmask);
//	sigaddset(&blockmask, SIGCHLD);
//	sigaddset(&blockmask, SIGHUP);
//	sigaddset(&blockmask, SIGALRM);
//	memset(&sa, 0, sizeof(sa));
//	sa.sa_mask = blockmask;
//	sa.sa_handler = server_shutdown;
//	sigaction(SIGINT, &sa, NULL);
//	sa.sa_handler = server_shutdown;
//	sigaction(SIGTERM, &sa, NULL);
//	sa.sa_handler = SIG_IGN;
//	sigaction(SIGCHLD, &sa, NULL);
//	sa.sa_handler = SIG_IGN;
//	sigaction(SIGPIPE, &sa, NULL);
//}
//
//int sockinit()
//{
//	struct hostent *hp;
//	struct sockaddr_in sin;
//	int i;
//
//	printf("Binding to 'http://%s:%d/'...", config.server_hostname, config.server_port);
//	fflush(stdout);
//	ListenSocket=socket(AF_INET, SOCK_STREAM, 0);
//	memset((char *)&sin, 0, sizeof(sin));
//	sin.sin_family=AF_INET;
//	if (strcasecmp("ANY", config.server_hostname)==0) {
//		sin.sin_addr.s_addr=htonl(INADDR_ANY);
//	} else {
//		hp=gethostbyname(config.server_hostname);
//		memmove((char *)&sin.sin_addr, hp->h_addr, hp->h_length);
//	}
//	sin.sin_port=htons((unsigned short)config.server_port);
//	i=0;
//	while (bind(ListenSocket, (struct sockaddr *)&sin, sizeof(sin))<0) {
//		sleep(5);
//		i++;
//		if (i>6) {
//			// logerror("bind() error [%s:%d]", config.server_hostname, config.server_port);
//			// perror("\nBind error");
//			exit(0);
//		}
//	}
//	if (listen(ListenSocket, 50)<0) {
//		// logerror("listen() error");
//		close(ListenSocket);
//		exit(0);
//	}
//
//	setsigs();
//	return 0;
//}
//
//
