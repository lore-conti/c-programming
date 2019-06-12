#include <stdio.h>

char* get_fruit_wrong() {
	char fruit[] = "apple";

	return fruit;
}

char* get_fruit_right() {
	static char fruit[] = "apple";

	return fruit;
}

int main(){

	printf("%s\n", get_fruit_wrong());
	printf("%s\n", get_fruit_right());
	
	return (0);
}
