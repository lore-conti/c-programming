


void func1(int *data) {
   

        somefunc2(*data);

}


void func2(int *data) {
    int localdata;
    localdata = *data;

        somefunc2(localdata);

}
