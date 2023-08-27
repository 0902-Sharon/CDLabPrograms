%{
#include<stdio.h>
#include<stdlib.h>
%}
%token DTYPE IDEN NUM RET
%%
S:A {printf("\naccepted!\n"); return 0;}
;
A:DTYPE IDEN '('PARAM')''{'BODY'}'
;
PARAM: PARAM','PARAM
|DTYPE IDEN
|DTYPE IDEN C
|
;
C:'['NUM']'C
|
;
BODY:BODY BODY
|PARAM';'
|E';'
|RET E';'
|RET IDEN';'
|RET NUM';'
|
;
E:IDEN'='E
|E Z E
|IDEN
|NUM
;
Z:'+'|'-'|'*'|'/'
;
%%
int main(){
printf("\nenter: \n");
yyparse();
printf("\nvalid \n");
return 0;
}
int yyerror(){
printf("\ninvalid! \n");
exit(0);
}
