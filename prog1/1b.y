%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
S: A B
| 
;
A: 'a' A 'b'
|
;
B: 'b' B 'c'
|
;
%%

int main(){
	printf("enter: \n");
	yyparse();
	printf("\n success! \n");
	return 0;
}
int yyerror(){
	printf("\n invalid! \n");
	exit(0);
}


