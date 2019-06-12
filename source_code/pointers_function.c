#include <stdio.h>

int addition (int a, int b) {
    printf("addition(%d,%d)\n", a, b);
    return (a+b);
}

int subtraction (int a, int b) {
    printf("subtraction(%d,%d)\n", a, b);
    return (a-b);
}

/*
* minus is a global pointer to a function that has two parameters of type int,
* it is immediately assigned to point to the function subtraction.
*/
int (*minus)(int,int) = subtraction;

int operation (int x, int y, int (*functocall)(int,int)) {
    int g;
    
    g = (*functocall)(x,y);
    return (g);
}

int main () {
    int m, n;
    
    m = operation (7, 5, addition);
    n = operation (20, m, minus);
    printf("%d\n", n);
    return 0;
}

