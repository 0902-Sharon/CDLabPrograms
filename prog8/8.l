%{
#include "y.tab.h"
#include <stdlib.h>
%}
%%
[a-zA-Z][a-zA-Z_0-9]* { yylval.exp=strdup(yytext); return IDEN;}
[0-9]+ { yylval.exp=strdup(yytext); return NUM;}
[-+*/] {return yytext[0];}
[()=] {return yytext[0];}
[\n]+ {return '\n';}
[ \t]+ {;}
. {;}
%%
