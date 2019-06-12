#include <stdio.h>

int main() {
	float fl = 3.14;
	unsigned int fl_addr = (unsigned int)&fl;
	float fl_content = *(float*)fl_addr;	
	float* fl_ptr = &fl;	
	
	printf("float fl = 3.14;\n");
	printf("unsigned int fl_addr = (unsigned int)&fl;\n");
	printf("float fl_content = *(float*)fl_addr;\n");	
	printf("float* fl_ptr = &fl;\n");
	printf("fl         =%f\n",fl); 
	printf("fl_addr    =%d\n",fl_addr);
	printf("fl_content =%f\n",fl_content);
	printf("fl_ptr     =%d\n",fl_ptr);
	
	return 0;
}
