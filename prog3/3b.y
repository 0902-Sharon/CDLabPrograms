%{
#include<stdio.h>
#include<stdlib.h>
%}
%token FOR IDEN NUM
%%
S:I END
;
I:FOR A B
;
A:'('E';'E';'E')'
;
B:B B 
|'{'B'}'
|E';'
|I
|
;
E:IDEN Z IDEN 
|IDEN Z NUM 
|IDEN U
;
Z: '='|'<'|'>'|'<''='|'>''='|'=''='|'+'|'-'
;
U: '+''+'|'-''-'
;
END: '$' {return 0;}
;
%%
int main(){
	printf("\nenter code : \n");
	yyparse();
	printf("\nvalid!\n");
	return 0;
}
int yyerror(){
printf("\ninvalid!\n");
exit(0);
}
