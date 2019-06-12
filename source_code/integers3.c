#include <time.h>

long test_float() {
    long i;
    float j = 3.14, k = 13.0;
    
    for (i = 0 ; i < 10000000; i++) {
        j *= k;
    }
    return j;
}

long test_double() {
    long i;
    double j = 3.14, k = 13.0;
    
    for (i = 0 ; i < 10000000; i++) {
        j *= k;
    }
    return j;
}

long test_int() {
    long i;
    int j = 314, k = 13;
    
    for (i = 0 ; i < 10000000; i++) {
        j *= k;
    }
    return j;
}


unsigned long test(long (*function)(void), int n) {
    unsigned long average = 0;
    clock_t begin, end;
    int i;
    
    for (i = 0; i < n; i++) {
        begin = clock();
        function();
        end = clock();
        average += end - begin;
    }
    return ((unsigned long)average / n);
}

int main () {
    printf("test_float  = %ld\n", test(test_float, 10));
    printf("test_double = %ld\n", test(test_double, 10));
    printf("test_int    = %ld\n", test(test_int, 10));  
    return 0;
    
}
