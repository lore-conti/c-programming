int count_string1( char *s) {
    int n = 0;
    
    while (*s) {
        n++;
        s++;
    }
    return(n);
}

int count_string2( char *s) {
    char *ptr = s;	
    
    while (*ptr) {
        ptr++;
    }
    return(ptr - s);
}
