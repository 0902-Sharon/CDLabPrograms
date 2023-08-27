%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
[\n\t ] ;
"int"|"float"|"char"|"double"|"void" {return DTYPE;}
"return" return RET;
[a-zA-Z][a-zA-z_0-9]* {return IDEN;}
[0-9]+ {return NUM;}
. {return yytext[0];}
%%
int yywrap(){
return 1;
}
