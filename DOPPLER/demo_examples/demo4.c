#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <klee/klee.h>

/**
 * Example 4: 
 * An example to construct linked list
 * the_score {int, int*} --> {int, int*}
*/

struct student { int *score, year, total;};

int main(int argc, char *argv[]) {
    int a, b, c, d;
    struct student *stu=malloc(sizeof(struct student));
    int *the_score=&a;
    int *year=&b;

    char buffer[100]; 
    if (argc < 2)
    {
            exit(0);
    }
    // buffer overflow occurs
    strcpy(buffer, argv[1]);
    char *f;

    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&d, sizeof(d), "d");
    klee_make_symbolic(stu, sizeof(*stu), "stu");
    klee_make_symbolic(the_score, sizeof(*the_score), "the_score");
    klee_make_symbolic(year, sizeof(*year), "year");
    klee_make_symbolic(buffer, 100, "buffer");
    
    f=buffer;
    while (*f != '\0'){
        if (*f == 'n'){
            break;
        }
        if (*f =='s'){
            *the_score=*(stu->score);
        }
        if (*f == 'y'){
            f++;
            int y = *f - '0';
            stu->year = y;
        }
        else{
            int s = *f - '0';
            stu->total += s;
        }
        f++;
    }
}