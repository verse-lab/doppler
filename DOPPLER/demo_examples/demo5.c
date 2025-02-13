#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <klee/klee.h>

int main(int argc, char *argv[])
{
    int a, b, c;
    int d;
    int* e=&d;

    char buffer[5];
    
    if (argc < 2)
    {
            exit(0);
    }
    // buffer overflow occurs
    strcpy(buffer, argv[1]);

    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&d, sizeof(d), "d");
    klee_make_symbolic(e, sizeof(*e), "e");

    while (a > 0)
    {
        a--;
        *e += 1;
    }
    
    if (b > 0)
    {
        b = *e;
        *e *= *e;
    }
    if (c > 0)
    {
        *e += b;
    }else{
        b /= 2;
    }
    if (c <10)
    {
        *e /= 2;
    }
    if (b < 10){
        klee_print_expr("%d",*e);
    }

    return 0;
}