#include <stdio.h>

#define DATALEN (6) 
    
int main() {
	unsigned char result;
	int i;
    int data1[DATALEN] = {1,-1,1,-1,1,-1};
    int data2[DATALEN] = {1,2,3,4,5,6};    
    	
    for(i = 0; i < DATALEN; i++) {     
        result = data1[i]*data2[i];
        printf("%3d %3d\n", data1[i]*data2[i], result);
    }	
	return 0;
}
