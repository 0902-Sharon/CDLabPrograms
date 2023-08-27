%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
[0-9]+ {yylval.exp = strdup(yytext); return NUM;}
[a-zA-Z][a-zA-z_0-9]* { yylval.exp = strdup(yytext); return IDEN;}
[-+*/] return yytext[0];
[()=] return yytext[0];
[\n]+ return '\n';
[ \t]+ ;
. ;

%%
