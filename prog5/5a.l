%{
#include "y.tab.h"
%}
%%
"int"|"float"|"char"|"double"|"void" { return DTYPE;}
[0-9]+ {return NUM;}
[a-zA-Z]+[0-9]* {return IDEN;}
[\n\t ] {;}
[#] {return 0;}
. { return yytext[0]; }
%%
int yywrap(){
	return 1;
}
