#include <stdio.h>
#define L 10
#define Q 34

/*
   Comment
*/
#define FT()int main(){char *a="#include <stdio.h>%c#define L 10%c#define Q 34%c%c/*%c   Comment%c*/%c#define FT()int main(){char *a=%c%s%c;FILE *f = fopen(%cGrace_kid.c%c, %cw%c);if (f){fprintf(f,a,L,L,L,L,L,L,L,Q,a,Q,Q,Q,Q,Q,L,L);}}%cFT()%c";FILE *f = fopen("Grace_kid.c", "w");if (f){fprintf(f,a,L,L,L,L,L,L,L,Q,a,Q,Q,Q,Q,Q,L,L);}}
FT()
