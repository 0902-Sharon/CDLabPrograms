%{
#include<stdio.h>
#include<stdlib.h>
int count = 0;
%}
%token IF IDEN NUM
%%
S:I END {printf("\nno of if statements = %d",count); }
;
I:IF A B { count = count + 1;}
;
A:'('E')'
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
|IDEN
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
	printf("\nvalid! count = %d \n", count);
	return 0;
}
int yyerror(){
printf("\ninvalid!\n");
exit(0);
}
