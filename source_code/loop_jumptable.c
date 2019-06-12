#include <stdio.h>

int processA() {
    printf("processA() done\n");
    return 0;
}

int processB() {
    printf("processB() done\n");
    return 1;
}

int processC() {
    printf("processC() done\n");
    return 2;
}

typedef int (*pfun)();
pfun jump_table[] = { processA, processB, processC } ;


int main () {
    int selector = 0;
    
    printf("result = %d\n", jump_table[selector]());
    selector++;
    printf("result = %d\n", jump_table[selector]());
    selector++;
    printf("result = %d\n", jump_table[selector]());
    return 0;
}
