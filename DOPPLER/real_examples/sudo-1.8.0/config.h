/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.in by autoheader.  */

#ifndef _SUDO_CONFIG_H
#define _SUDO_CONFIG_H

/* Define to 1 if the `syslog' function returns a non-zero int to denote
   failure. */
/* #undef BROKEN_SYSLOG */

/* Define to 1 if you want the insults from the "classic" version sudo. */
/* #undef CLASSIC_INSULTS */

/* Define to 1 if you want insults culled from the twisted minds of CSOps. */
/* #undef CSOPS_INSULTS */

/* Define to 1 if you want sudo to display "command not allowed" instead of
   "command not found" when a command cannot be found. */
/* #undef DONT_LEAK_PATH_INFO */

/* A colon-separated list of pathnames to be used as the editor for visudo. */
#define EDITOR _PATH_VI

/* Define to 1 to enable environment function debugging. */
/* #undef ENV_DEBUG */

/* Define to 1 if you want visudo to honor the EDITOR and VISUAL env
   variables. */
/* #undef ENV_EDITOR */

/* Define to 1 to enable environment resetting by default. */
#define ENV_RESET TRUE

/* If defined, users in this group need not enter a passwd (ie "sudo"). */
/* #undef EXEMPTGROUP */

/* Define to 1 if you want to require fully qualified hosts in sudoers. */
/* #undef FQDN */

/* Define to the type of elements in the array set by `getgroups'. Usually
   this is either `int' or `gid_t'. */
#define GETGROUPS_T gid_t

/* Define to 1 if you want insults from the "Goon Show". */
/* #undef GOONS_INSULTS */

/* Define to 1 if you want 2001-like insults. */
/* #undef HAL_INSULTS */

/* Define to 1 if you use AFS. */
/* #undef HAVE_AFS */

/* Define to 1 if you use AIX general authentication. */
/* #undef HAVE_AIXAUTH */

/* Define to 1 if you have the `asprintf' function. */
#define HAVE_ASPRINTF 1

/* Define to 1 if you have the `authenticate' function. */
/* #undef HAVE_AUTHENTICATE */

/* Define to 1 if you have the `auth_challenge' function. */
/* #undef HAVE_AUTH_CHALLENGE */

/* Define to 1 if you have the `bigcrypt' function. */
/* #undef HAVE_BIGCRYPT */

/* Define to 1 if you use BSD authentication. */
/* #undef HAVE_BSD_AUTH_H */

/* Define to 1 to enable BSM audit support. */
/* #undef HAVE_BSM_AUDIT */

/* Define to 1 if you have the `closefrom' function. */
#define HAVE_CLOSEFROM 1

/* Define to 1 if you use OSF DCE. */
/* #undef HAVE_DCE */

/* Define to 1 if your `DIR' contains dd_fd. */
/* #undef HAVE_DD_FD */

/* Define to 1 if you have the declaration of `sys_siglist', and to 0 if you
   don't. */
/* #undef HAVE_DECL_SYS_SIGLIST */

/* Define to 1 if you have the declaration of `_sys_siglist', and to 0 if you
   don't. */
/* #undef HAVE_DECL__SYS_SIGLIST */

/* Define to 1 if you have the declaration of `__sys_siglist', and to 0 if you
   don't. */
/* #undef HAVE_DECL___SYS_SIGLIST */

/* Define to 1 if you have the `dgettext' function. */
/* #undef HAVE_DGETTEXT */

/* Define to 1 if you have the <dirent.h> header file, and it defines `DIR'.
   */
#define HAVE_DIRENT_H 1

/* Define to 1 if you have the `dirfd' function or macro. */
#define HAVE_DIRFD 1

/* Define to 1 if you have the `dispcrypt' function. */
/* #undef HAVE_DISPCRYPT */

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if you have the `dlopen' function. */
#define HAVE_DLOPEN 1

/* Define to 1 if your glob.h defines the GLOB_BRACE and GLOB_TILDE flags. */
#define HAVE_EXTENDED_GLOB 1

/* Define to 1 if your system has the F_CLOSEM fcntl. */
/* #undef HAVE_FCNTL_CLOSEM */

/* Define to 1 if you have the `fgetln' function. */
/* #undef HAVE_FGETLN */

/* Define to 1 if you have the `flock' function. */
/* #undef HAVE_FLOCK */

/* Define to 1 if you have the `fnmatch' function. */
#define HAVE_FNMATCH 1

/* Define to 1 if you have the `freeifaddrs' function. */
#define HAVE_FREEIFADDRS 1

/* Define to 1 if you have the `fstat' function. */
#define HAVE_FSTAT 1

/* Define to 1 if you have the `futime' function. */
/* #undef HAVE_FUTIME */

/* Define to 1 if you have the `futimes' function. */
#define HAVE_FUTIMES 1

/* Define to 1 if you have the `futimesat' function. */
/* #undef HAVE_FUTIMESAT */

/* Define to 1 if you use the FWTK authsrv daemon. */
/* #undef HAVE_FWTK */

/* Define to 1 if you have the `getaddrinfo' function. */
#define HAVE_GETADDRINFO 1

/* Define to 1 if you have the `getauthuid' function. (ULTRIX 4.x shadow
   passwords) */
/* #undef HAVE_GETAUTHUID */

/* Define to 1 if you have the `getcwd' function. */
#define HAVE_GETCWD 1

/* Define to 1 if you have the `getdomainname' function. */
#define HAVE_GETDOMAINNAME 1

/* Define to 1 if you have the `getgroups' function. */
#define HAVE_GETGROUPS 1

/* Define to 1 if you have the `getifaddrs' function. */
#define HAVE_GETIFADDRS 1

/* Define to 1 if you have the `getline' function. */
#define HAVE_GETLINE 1

/* Define to 1 if you have the `getprogname' function. */
/* #undef HAVE_GETPROGNAME */

/* Define to 1 if you have the `getprpwnam' function. (SecureWare-style shadow
   passwords) */
/* #undef HAVE_GETPRPWNAM */

/* Define to 1 if you have the `getpwanam' function. (SunOS 4.x shadow
   passwords) */
/* #undef HAVE_GETPWANAM */

/* Define to 1 if you have the `getresuid' function. */
#define HAVE_GETRESUID 1

/* Define to 1 if you have the `getspnam' function (SVR4-style shadow
   passwords) */
#define HAVE_GETSPNAM 1

/* Define to 1 if you have the `getspwuid' function. (HP-UX <= 9.X shadow
   passwords) */
/* #undef HAVE_GETSPWUID */

/* Define to 1 if you have the `getuserattr' function. */
/* #undef HAVE_GETUSERATTR */

/* Define to 1 if you have the `getutid' function. */
/* #undef HAVE_GETUTID */

/* Define to 1 if you have the `getutxid' function. */
#define HAVE_GETUTXID 1

/* Define to 1 if you have the `glob' function. */
#define HAVE_GLOB 1

/* Define to 1 if you have the `grantpt' function. */
/* #undef HAVE_GRANTPT */

/* Define to 1 if you have the <gssapi/gssapi_krb5.h> header file. */
/* #undef HAVE_GSSAPI_GSSAPI_KRB5_H */

/* Define to 1 if you have the `gss_krb5_ccache_name' function. */
/* #undef HAVE_GSS_KRB5_CCACHE_NAME */

/* Define to 1 if your Kerberos is Heimdal. */
/* #undef HAVE_HEIMDAL */

/* Define to 1 if <netinet/in.h> contains struct in6_addr. */
#define HAVE_IN6_ADDR 1

/* Define to 1 if you have the `initgroups' function. */
#define HAVE_INITGROUPS 1

/* Define to 1 if you have the `initprivs' function. */
/* #undef HAVE_INITPRIVS */

/* Define to 1 if you have the `innetgr' function. */
#define HAVE_INNETGR 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define if you have isblank(3). */
#define HAVE_ISBLANK 1

/* Define to 1 if you have the `iscomsec' function. (HP-UX >= 10.x check for
   shadow enabled) */
/* #undef HAVE_ISCOMSEC */

/* Define to 1 if you have the `issecure' function. (SunOS 4.x check for
   shadow enabled) */
/* #undef HAVE_ISSECURE */

/* Define to 1 if you use Kerberos IV. */
/* #undef HAVE_KERB4 */

/* Define to 1 if you use Kerberos V. */
/* #undef HAVE_KERB5 */

/* Define to 1 if you have the `killpg' function. */
#define HAVE_KILLPG 1

/* Define to 1 if you have the `krb5_get_init_creds_opt_alloc' function. */
/* #undef HAVE_KRB5_GET_INIT_CREDS_OPT_ALLOC */

/* Define to 1 if your `krb5_get_init_creds_opt_free' function takes two
   arguments. */
/* #undef HAVE_KRB5_GET_INIT_CREDS_OPT_FREE_TWO_ARGS */

/* Define to 1 if you have the `krb5_init_secure_context' function. */
/* #undef HAVE_KRB5_INIT_SECURE_CONTEXT */

/* Define to 1 if you have the `krb5_verify_user' function. */
/* #undef HAVE_KRB5_VERIFY_USER */

/* Define to 1 if your LDAP needs <lber.h>. (OpenLDAP does not) */
/* #undef HAVE_LBER_H */

/* Define to 1 if you use LDAP for sudoers. */
/* #undef HAVE_LDAP */

/* Define to 1 if you have the `ldapssl_init' function. */
/* #undef HAVE_LDAPSSL_INIT */

/* Define to 1 if you have the `ldapssl_set_strength' function. */
/* #undef HAVE_LDAPSSL_SET_STRENGTH */

/* Define to 1 if you have the `ldap_create' function. */
/* #undef HAVE_LDAP_CREATE */

/* Define to 1 if you have the `ldap_initialize' function. */
/* #undef HAVE_LDAP_INITIALIZE */

/* Define to 1 if you have the `ldap_sasl_bind_s' function. */
/* #undef HAVE_LDAP_SASL_BIND_S */

/* Define to 1 if you have the `ldap_sasl_interactive_bind_s' function. */
/* #undef HAVE_LDAP_SASL_INTERACTIVE_BIND_S */

/* Define to 1 if you have the `ldap_search_ext_s' function. */
/* #undef HAVE_LDAP_SEARCH_EXT_S */

/* Define to 1 if you have the `ldap_search_st' function. */
/* #undef HAVE_LDAP_SEARCH_ST */

/* Define to 1 if you have the `ldap_ssl_client_init' function. */
/* #undef HAVE_LDAP_SSL_CLIENT_INIT */

/* Define to 1 if you have the <ldap_ssl.h> header file. */
/* #undef HAVE_LDAP_SSL_H */

/* Define to 1 if you have the `ldap_start_tls_s' function. */
/* #undef HAVE_LDAP_START_TLS_S */

/* Define to 1 if you have the `ldap_start_tls_s_np' function. */
/* #undef HAVE_LDAP_START_TLS_S_NP */

/* Define to 1 if you have the `ldap_str2dn' function. */
/* #undef HAVE_LDAP_STR2DN */

/* Define to 1 if you have the `ldap_unbind_ext_s' function. */
/* #undef HAVE_LDAP_UNBIND_EXT_S */

/* Define to 1 to enable Linux audit support. */
/* #undef HAVE_LINUX_AUDIT */

/* Define to 1 if you have the `lockf' function. */
#define HAVE_LOCKF 1

/* Define to 1 if you have the <login_cap.h> header file. */
/* #undef HAVE_LOGIN_CAP_H */

/* Define to 1 if the system has the type `long long int'. */
#define HAVE_LONG_LONG_INT 1

/* Define to 1 if you have the `lrand48' function. */
/* #undef HAVE_LRAND48 */

/* Define to 1 if you have the <maillock.h> header file. */
/* #undef HAVE_MAILLOCK_H */

/* Define to 1 if you have the <malloc.h> header file. */
#define HAVE_MALLOC_H 1

/* Define to 1 if you have the `mbr_check_membership' function. */
/* #undef HAVE_MBR_CHECK_MEMBERSHIP */

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the `memrchr' function. */
#define HAVE_MEMRCHR 1

/* Define to 1 if you have the `mkdtemp' function. */
#define HAVE_MKDTEMP 1

/* Define to 1 if you have the `mkstemps' function. */
#define HAVE_MKSTEMPS 1

/* Define to 1 if you have the <mps/ldap_ssl.h> header file. */
/* #undef HAVE_MPS_LDAP_SSL_H */

/* Define to 1 if you have the `nanosleep' function. */
#define HAVE_NANOSLEEP 1

/* Define to 1 if you have the <ndir.h> header file, and it defines `DIR'. */
/* #undef HAVE_NDIR_H */

/* Define to 1 if you have the <netgroup.h> header file. */
/* #undef HAVE_NETGROUP_H */

/* Define to 1 if you have the `nl_langinfo' function. */
#define HAVE_NL_LANGINFO 1

/* Define to 1 if you have the `openpty' function. */
#define HAVE_OPENPTY 1

/* Define to 1 if you use NRL OPIE. */
/* #undef HAVE_OPIE */

/* Define to 1 if you use PAM authentication. */
/* #undef HAVE_PAM */

/* Define to 1 if you use a specific PAM session for sudo -i. */
/* #undef HAVE_PAM_LOGIN */

/* Define to 1 if you have the <pam/pam_appl.h> header file. */
/* #undef HAVE_PAM_PAM_APPL_H */

/* Define to 1 if you have the <paths.h> header file. */
#define HAVE_PATHS_H 1

/* Define to 1 if you have the `posix_openpt' function. */
/* #undef HAVE_POSIX_OPENPT */

/* Define to 1 if you have the <project.h> header file. */
/* #undef HAVE_PROJECT_H */

/* Define to 1 if you have the <pty.h> header file. */
#define HAVE_PTY_H 1

/* Define to 1 if you have the `random' function. */
/* #undef HAVE_RANDOM */

/* Define to 1 if you have the `regcomp' function. */
#define HAVE_REGCOMP 1

/* Define to 1 if you have the `revoke' function. */
/* #undef HAVE_REVOKE */

/* Define to 1 if you have the <sasl.h> header file. */
/* #undef HAVE_SASL_H */

/* Define to 1 if you have the <sasl/sasl.h> header file. */
/* #undef HAVE_SASL_SASL_H */

/* Define if your struct sockadr has an sa_len field. */
/* #undef HAVE_SA_LEN */

/* Define to 1 if you use SecurID for authentication. */
/* #undef HAVE_SECURID */

/* Define to 1 if you have the <security/pam_appl.h> header file. */
/* #undef HAVE_SECURITY_PAM_APPL_H */

/* Define to 1 to enable SELinux RBAC support. */
/* #undef HAVE_SELINUX */

/* Define to 1 if you have the `setauthdb' function. */
/* #undef HAVE_SETAUTHDB */

/* Define to 1 if you have the `setenv' function. */
#define HAVE_SETENV 1

/* Define to 1 if you have the `seteuid' function. */
#define HAVE_SETEUID 1

/* Define to 1 if you have the `setkeycreatecon' function. */
/* #undef HAVE_SETKEYCREATECON */

/* Define to 1 if you have the `setlocale' function. */
#define HAVE_SETLOCALE 1

/* Define to 1 if you have the `setresuid' function. */
#define HAVE_SETRESUID 1

/* Define to 1 if you have the `setreuid' function. */
/* #undef HAVE_SETREUID */

/* Define to 1 if you have the `setrlimit64' function. */
#define HAVE_SETRLIMIT64 1

/* Define to 1 if you have the `set_auth_parameters' function. */
/* #undef HAVE_SET_AUTH_PARAMETERS */

/* Define to 1 if you have the `shl_load' function. */
/* #undef HAVE_SHL_LOAD */

/* Define to 1 if you have the `sia_ses_init' function. */
/* #undef HAVE_SIA_SES_INIT */

/* Define to 1 if <signal.h> has the sigaction_t typedef. */
/* #undef HAVE_SIGACTION_T */

/* Define to 1 if you use S/Key. */
/* #undef HAVE_SKEY */

/* Define to 1 if your S/Key library has skeyaccess(). */
/* #undef HAVE_SKEYACCESS */

/* Define to 1 if you have the `snprintf' function. */
#define HAVE_SNPRINTF 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strftime' function. */
#define HAVE_STRFTIME 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the `strlcat' function. */
/* #undef HAVE_STRLCAT */

/* Define to 1 if you have the `strlcpy' function. */
/* #undef HAVE_STRLCPY */

/* Define to 1 if you have the `strrchr' function. */
#define HAVE_STRRCHR 1

/* Define to 1 if you have the `strsignal' function. */
#define HAVE_STRSIGNAL 1

/* Define to 1 if the system has the type `struct in6_addr'. */
#define HAVE_STRUCT_IN6_ADDR 1

/* Define to 1 if your struct stat has an st_mtim member */
#define HAVE_ST_MTIM 1

/* Define to 1 if your struct stat has an st_mtimespec member */
/* #undef HAVE_ST_MTIMESPEC */

/* Define to 1 if your struct stat uses an st__tim union */
/* #undef HAVE_ST__TIM */

/* Define to 1 if you have the `sysconf' function. */
#define HAVE_SYSCONF 1

/* Define to 1 if you have the `sysctl' function. */
/* #undef HAVE_SYSCTL */

/* Define to 1 if you have the <sys/bsdtypes.h> header file. */
/* #undef HAVE_SYS_BSDTYPES_H */

/* Define to 1 if you have the <sys/dir.h> header file, and it defines `DIR'.
   */
/* #undef HAVE_SYS_DIR_H */

/* Define to 1 if you have the <sys/ndir.h> header file, and it defines `DIR'.
   */
/* #undef HAVE_SYS_NDIR_H */

/* Define to 1 if you have the <sys/select.h> header file. */
#define HAVE_SYS_SELECT_H 1

/* Define to 1 if you have the <sys/sockio.h> header file. */
/* #undef HAVE_SYS_SOCKIO_H */

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/stropts.h> header file. */
/* #undef HAVE_SYS_STROPTS_H */

/* Define to 1 if you have the <sys/sysmacros.h> header file. */
#define HAVE_SYS_SYSMACROS_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have struct timespec in sys/time.h */
#define HAVE_TIMESPEC 1

/* Define to 1 if you have the `tzset' function. */
#define HAVE_TZSET 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if you have the `unsetenv' function. */
#define HAVE_UNSETENV 1

/* Define to 1 if you have the <util.h> header file. */
/* #undef HAVE_UTIL_H */

/* Define to 1 if you have the `utimes' function. */
#define HAVE_UTIMES 1

/* Define to 1 if you have the <utime.h> header file. */
#define HAVE_UTIME_H 1

/* Define to 1 if you have the `vasprintf' function. */
#define HAVE_VASPRINTF 1

/* Define to 1 if you have the `vsnprintf' function. */
#define HAVE_VSNPRINTF 1

/* Define to 1 if you have the <zlib.h> header file. */
#define HAVE_ZLIB_H 1

/* Define to 1 if you have the `_getpty' function. */
/* #undef HAVE__GETPTY */

/* Define to 1 if you have the `_innetgr' function. */
/* #undef HAVE__INNETGR */

/* Define to 1 if your crt0.o defines the __progname symbol for you. */
#define HAVE___PROGNAME 1

/* Define to 1 if you want the hostname to be entered into the log file. */
/* #undef HOST_IN_LOG */

/* Define to 1 if you want to ignore '.' and empty PATH elements */
/* #undef IGNORE_DOT_PATH */

/* The message given when a bad password is entered. */
#define INCORRECT_PASSWORD "Sorry, try again."

/* The syslog facility sudo will use. */
#define LOGFAC "authpriv"

/* Define to SLOG_SYSLOG, SLOG_FILE, or SLOG_BOTH. */
#define LOGGING SLOG_SYSLOG

/* Define to 1 if you want a two line OTP (S/Key or OPIE) prompt. */
/* #undef LONG_OTP_PROMPT */

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#define LT_OBJDIR ".libs/"

/* The subject of the mail sent by sudo to the MAILTO user/address. */
#define MAILSUBJECT "*** SECURITY information for %h ***"

/* The user or email address that sudo mail is sent to. */
#define MAILTO "root"

/* The max number of chars per log file line (for line wrapping). */
#define MAXLOGFILELEN 80

/* Define to the max length of a uid_t in string context (excluding the NUL).
   */
#define MAX_UID_T_LEN 10

/* Define to 1 if you don't want sudo to prompt for a password by default. */
/* #undef NO_AUTHENTICATION */

/* Define to 1 if you don't want users to get the lecture the first they user
   sudo. */
/* #undef NO_LECTURE */

/* Define to 1 if you don't want to use sudo's PAM session support */
/* #undef NO_PAM_SESSION */

/* Define to avoid runing the mailer as root. */
/* #undef NO_ROOT_MAILER */

/* Define to 1 if root should not be allowed to use sudo. */
/* #undef NO_ROOT_SUDO */

/* Define to 1 if you want a single ticket file instead of per-tty files. */
/* #undef NO_TTY_TICKETS */

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "http://www.sudo.ws/bugs/"

/* Define to the full name of this package. */
#define PACKAGE_NAME "sudo"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "sudo 1.8.0"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "sudo"

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION "1.8.0"

/* The default password prompt. */
#define PASSPROMPT "Password:"

/* The passwd prompt timeout (in minutes). */
#define PASSWORD_TIMEOUT 5

/* Define to 1 to replace politically incorrect insults with less offensive
   ones. */
/* #undef PC_INSULTS */

/* The syslog priority sudo will use for unsuccessful attempts/errors. */
#define PRI_FAILURE "alert"

/* The syslog priority sudo will use for successful attempts. */
#define PRI_SUCCESS "notice"

/* The user sudo should run commands as by default. */
#define RUNAS_DEFAULT "root"

/* Define to 1 to override the user's path with a built-in one. */
/* #undef SECURE_PATH */

/* Define to 1 to send mail when the user is not allowed to run a command. */
/* #undef SEND_MAIL_WHEN_NOT_OK */

/* Define to 1 to send mail when the user is not allowed to run sudo on this
   host. */
/* #undef SEND_MAIL_WHEN_NO_HOST */

/* Define to 1 to send mail when the user is not in the sudoers file. */
#define SEND_MAIL_WHEN_NO_USER 1

/* Define to 1 if you want sudo to start a shell if given no arguments. */
/* #undef SHELL_IF_NO_ARGS */

/* Define to 1 if you want sudo to set $HOME in shell mode. */
/* #undef SHELL_SETS_HOME */

/* The size of `long int', as computed by sizeof. */
#define SIZEOF_LONG_INT 8

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to 1 if the code in interfaces.c does not compile for you. */
/* #undef STUB_LOAD_INTERFACES */

/* The name of the sudoers plugin, including extension. */
#define SUDOERS_PLUGIN "sudoers.so"

/* The umask that the sudo-run prog should use. */
#define SUDO_UMASK 0022

/* The number of minutes before sudo asks for a password again. */
#define TIMEOUT 5

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#define TIME_WITH_SYS_TIME 1

/* The number of tries a user gets to enter their password. */
#define TRIES_FOR_PASSWORD 3

/* Define to 1 to use the umask specified in sudoers even when it is less
   restrictive than the invoking user's. */
/* #undef UMASK_OVERRIDE */

/* Define to 1 if the `unsetenv' function returns void instead of `int'. */
/* #undef UNSETENV_VOID */

/* Define to 1 if you want to create ~/.sudo_as_admin_successful if the user
   is in the admin group the first time they run sudo. */
/* #undef USE_ADMIN_FLAG */

/* Define to 1 if you want to insult the user for entering an incorrect
   password. */
/* #undef USE_INSULTS */

/* Define to 1 if you use GNU stow packaging. */
/* #undef USE_STOW */

/* Define to avoid using the passwd/shadow file for authentication. */
/* #undef WITHOUT_PASSWD */

/* Number of bits in a file offset, on hosts where this is settable. */
/* #undef _FILE_OFFSET_BITS */

/* Define for large files, on AIX-style hosts. */
/* #undef _LARGE_FILES */

/* Define to `signed' or nothing if compiler does not support a signed type
   qualifier. */
/* #undef __signed */

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define if your system lacks the dev_t type. */
/* #undef dev_t */

/* Define to `int' if <sys/types.h> doesn't define. */
/* #undef gid_t */

/* Define if your system lacks the ino_t type. */
/* #undef ino_t */

/* Define to `int' if <sys/types.h> does not define. */
/* #undef mode_t */

/* Define to `int' if <signal.h> does not define. */
/* #undef sig_atomic_t */

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */

/* Define if your system lacks the ssize_t type. */
/* #undef ssize_t */

/* Define to `int' if <sys/types.h> doesn't define. */
/* #undef uid_t */

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
/* #undef volatile */

/*
 * Macros to convert ctime and mtime into timevals.
 */
#define timespec2timeval(_ts, _tv) do {					\
    (_tv)->tv_sec = (_ts)->tv_sec;					\
    (_tv)->tv_usec = (_ts)->tv_nsec / 1000;				\
} while (0)

#ifdef HAVE_ST_MTIM
# ifdef HAVE_ST__TIM
#  define ctim_get(_x, _y)	timespec2timeval(&(_x)->st_ctim.st__tim, (_y))
#  define mtim_get(_x, _y)	timespec2timeval(&(_x)->st_mtim.st__tim, (_y))
# else
#  define ctim_get(_x, _y)	timespec2timeval(&(_x)->st_ctim, (_y))
#  define mtim_get(_x, _y)	timespec2timeval(&(_x)->st_mtim, (_y))
# endif
#else
# ifdef HAVE_ST_MTIMESPEC
#  define ctim_get(_x, _y)	timespec2timeval(&(_x)->st_ctimespec, (_y))
#  define mtim_get(_x, _y)	timespec2timeval(&(_x)->st_mtimespec, (_y))
# else
#  define ctim_get(_x, _y)	do { (_y)->tv_sec = (_x)->st_ctime; (_y)->tv_usec = 0; } while (0)
#  define mtim_get(_x, _y)	do { (_y)->tv_sec = (_x)->st_mtime; (_y)->tv_usec = 0; } while (0)
# endif /* HAVE_ST_MTIMESPEC */
#endif /* HAVE_ST_MTIM */

/* GNU stow needs /etc/sudoers to be a symlink. */
#ifdef USE_STOW
# define stat_sudoers	stat
#else
# define stat_sudoers	lstat
#endif

/* Macros to set/clear/test flags. */
/* #undef SET */
#define SET(t, f)	((t) |= (f))
/* #undef CLR */
#define CLR(t, f)	((t) &= ~(f))
/* #undef ISSET */
#define ISSET(t, f)     ((t) & (f))

/* New ANSI-style OS defs for HP-UX and ConvexOS. */
#if defined(hpux) && !defined(__hpux)
# define __hpux		1
#endif /* hpux */

#if defined(convex) && !defined(__convex__)
# define __convex__	1
#endif /* convex */

/* BSD compatibility on some SVR4 systems. */
#ifdef __svr4__
# define BSD_COMP
#endif /* __svr4__ */

#endif /* _SUDO_CONFIG_H */
