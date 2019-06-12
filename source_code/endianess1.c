#include <stdio.h>

int main(int argc, char *argv[]) {
    unsigned long value = 0xABCDEF12;
    unsigned char *arr;
    
    arr = (unsigned char *)&value;
    
    printf("little-endian(x86): LSB has the lowest address in memory.\n");
    printf("big-endian   (68k): MSB has the lowest address in memory.\n");
    
    printf("MSB-> %X <-LSB\n", value);
    
    printf("VAL=%X %X %X %X\n", arr[0], arr[1], arr[2], arr[3]);
    printf("ADR=%p %p %p %p\n", &arr[0], &arr[1], &arr[2], &arr[3]);

    return (0);
}
