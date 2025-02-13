#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <klee/klee.h>

int main(int argc, char *argv[]) {
    int a, b, c, d=100;
    int* g = &d;

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
    klee_make_symbolic(g, sizeof(*g), "g");

    int e = 0;

    while(d>0){
       if (a > 0){
            printf("%d",e);
        }else if (b>0)
        {
            *g=-1;
        }else if (c>0)
        {
            e = *g;
        } 
        d--;
    }
    return 0;
}