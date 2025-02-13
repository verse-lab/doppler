#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <klee/klee.h>

/**
 * The grammar is not regular (without the bounded klee search)
**/
int f(int a1){
    int a = a1;
    // a capped at 10 for bounded klee search
    if (a < 0 || a > 10) {
        return 0;
    }
    // memory error occurs
    int count1 = 0;
    while (count1 < a) {
        printf("a");
        count1++;
    }
    int count2 = 0;
    while (count2 < count1) {
        printf("b");
        count2++;
    }

    return 0;
}

int main() {
    int a;

    klee_make_symbolic(&a, sizeof(a), "a");

    return f(a);
}
