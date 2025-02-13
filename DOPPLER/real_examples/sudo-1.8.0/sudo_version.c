#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

static const char *progname = "sudo";
int debug_level=10;

const char *
getprogname(void)
{
    return progname;
}

void
efree(void *ptr)
{
    if (ptr != NULL)
	free(ptr);
}

int
evasprintf(char **ret, const char *format, va_list args)
{
    int len;

    if ((len = vasprintf(ret, format, args)) == -1)
	errorx(1, "unable to allocate memory");
    return len;
}

void
sudo_debug(int level, const char *fmt, ...)
{
    va_list ap;
    char *fmt2;

    if (level > debug_level)
	return;

    /* Backet fmt with program name and a newline to make it a single write */
    easprintf(&fmt2, "%s: %s\n", getprogname(), fmt);
    va_start(ap, fmt);
    vfprintf(stderr, fmt2, ap);
    va_end(ap);
    efree(fmt2);
}

char* user_input(){
    return "<user_paylaod>";
}

int user_input2(){
    return 10;
}

int main(){
    int count=user_input2();
    for(int i=0;i<count;i++){
        int level=10;
        char* fmt=user_input();
        sudo_debug(level,fmt);
    }
    
    
}