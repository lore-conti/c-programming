#include <stdio.h> 

#define DATALEN (4) 
int main(void) { 
    int k;
    long count = 0;
    int data[DATALEN] = {1,2,3,4};
    
    for (k = 0; k < DATALEN; k++) {
        count +=((data[k] & 128) >> 7)  +
                ((data[k] &  64) >> 6)  +
                ((data[k] &  32) >> 5)  +
                ((data[k] &  16) >> 4)  +
                ((data[k] &   8) >> 3)  +
                ((data[k] &   4) >> 2)  +
                ((data[k] &   2) >> 1)  +
                ((data[k] &   1));
    }
    printf("count = %d\n", count);
    return 0;
}
