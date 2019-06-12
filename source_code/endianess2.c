#include <stdio.h>

int main() {    
    unsigned int i1 = 0x01;
    unsigned int i2 = *(unsigned char *)&i1;
    
    if (i1 == i2) {
        printf("LITTLE ENDIAN\n");
    } else {
        printf("BIG ENDIAN\n");
    }
    return 0;
}
