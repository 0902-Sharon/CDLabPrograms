%{
#include "y.tab.h"
%}
%%
"for" {return FOR;}
[a-zA-Z]+ {return IDEN;}
[0-9]+ {return NUM;}
[\n ] {;}
. {return yytext[0]; }
%%
int yywrap(){
 return 1;
}

