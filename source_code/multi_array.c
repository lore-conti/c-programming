#include <stdio.h>

#define NROWS   3
#define NCOLS   3

int main() {
    int i,j;
    int result[NROWS];
    int matrix[NROWS][NCOLS] = {{1,1,1},{2,2,2},{3,3,3}};
    int vector[NCOLS] = {4,5,6};
    int resultVal;
    
    
    for(i = 0; i < NROWS; i++) {
        for(j = 0; j < NCOLS; j++) {
            result[i] = result[i] + ((matrix[i][j])*vector[j]);
        }
    }
        
    
    for(i = 0; i < NROWS; i++){
        int resultVal = 0;
        for(j = 0; j < NCOLS; j++) {
            resultVal = resultVal + ((matrix[i][j])*vector[j]);
        }
        result[i] = resultVal;
    }
}
