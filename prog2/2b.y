%{
#include<stdio.h>
#include<stdlib.h>

%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
S: A {printf("result = %d", $$);}
A: A '+' A {$$ = $1 + $3;}
| A '-' A {$$ = $1 - $3;}
| A '*' A {$$ = $1 * $3;}
| A '/' A {if($3 == 0){ printf("\ninvalid division by zero!"); exit(0);}else{ $$ = $1 / $3;}}
| NUM {$$=$1;}
| '-' NUM {$$ = -$2;}
| '(' A ')' {$$ = $2;}
;
%%
int main(){
	printf("\nenter: \n");
	yyparse();
	printf("\n valid expression! \n");
	return 0;
}
int yyerror(){
	printf("\ninvalid expression!\n");
	exit(0);
}

