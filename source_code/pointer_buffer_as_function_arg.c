#include <stdio.h>

/* buffer is a pointer to a pointer of char */
int fill_buffer(char **buffer) {
	char *content = "0123456789-----987654321";
	int len = 25;
	
	(*buffer) = (char *)calloc(len, sizeof(char));
	memcpy(*buffer, content, len);
	return len;
}


int main(){
	int len;
	char *buffer;

	len = fill_buffer(&buffer);
	printf("%d:%s\n", len, buffer);
	free(&buffer);
    return (0);
}
