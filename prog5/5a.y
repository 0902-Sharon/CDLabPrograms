%{
#include <stdio.h>
#include <stdlib.h>
int count=0;
%}
%token DTYPE IDEN NUM
%%
S:D';'S
|
;
D:D','I
|T I
;
T:DTYPE
;
I:IDEN {count++;}
|IDEN C {count++;}
|IDEN'='NUM {count++;}
|IDEN C'='NUM {count++;}
|IDEN {count++;}
;
C:'['NUM']'C
|
;
%%
int main(){
printf("\nenter statement: \n");
yyparse();
printf("\nvalid, no of variables declared : %d", count);
return 0;
}
int yyerror(){
printf("\n some error! \n");
exit(0);
}
