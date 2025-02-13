#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <klee/klee.h>

int main(int argc, char *argv[]) {
    int a, b, c, d;
    char *e;
    int* a_ptr=&a;
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

    if ((a << 2)>0){
        printf("%d",d);
    }else if (b>0)
    {
        *e = buffer[0];
    }else if (c>0)
    {
        printf("%d",*a_ptr);
    }else{
        printf("3");
    }

    return 0;
}