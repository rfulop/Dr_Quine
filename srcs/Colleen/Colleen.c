#include<stdio.h>
/*
   Outside comment
*/
void f(char*a){printf(a,10,10,10,10,10,10,10,10,10,34,a,34,10);}
int main(){
/*
   Inside comment
*/
char*a="#include<stdio.h>%c/*%c   Outside comment%c*/%cvoid f(char*a){printf(a,10,10,10,10,10,10,10,10,10,34,a,34,10);}%cint main(){%c/*%c   Inside comment%c*/%cchar*a=%c%s%c;f(a);}%c";f(a);}
