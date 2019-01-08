#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
int i = 5;
int main(){
if (i<=0)return 0;
if(!strstr(__FILE__, "Sully.c"))--i;
char *a="#include <stdio.h>%c#include <stdlib.h>%c#include <string.h>%c#include <fcntl.h>%cint i = %d;%cint main(){%cif (i<=0)return 0;%cif(!strstr(__FILE__, %cSully.c%c))--i;%cchar *a=%c%s%c;%cchar *name = %cSully_%c;%cchar file[12];%cchar cmd[200];%csprintf(file, %c%%s%%d.c%c, name, i);%cint f = open(file, O_CREAT|O_WRONLY|O_TRUNC,0666);if (f){dprintf(f,a,10,10,10,10,i,10,10,10,34,34,10,34,a,34,10,34,34,10,10,10,34,34,10,10,34,34,10,10);}%csprintf(cmd, %cclang -Wall -Werror -Wextra %%s -o Sully_%%d; ./Sully_%%d%c, file, i, i);%csystem(cmd);}%c";
char *name = "Sully_";
char file[12];
char cmd[200];
sprintf(file, "%s%d.c", name, i);
int f = open(file, O_CREAT|O_WRONLY|O_TRUNC,0666);if (f){dprintf(f,a,10,10,10,10,i,10,10,10,34,34,10,34,a,34,10,34,34,10,10,10,34,34,10,10,34,34,10,10);}
sprintf(cmd, "clang -Wall -Werror -Wextra %s -o Sully_%d; ./Sully_%d", file, i, i);
system(cmd);}

