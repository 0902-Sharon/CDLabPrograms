%{
#include<stdio.h>
#include<stdlib.h>
int com=0,lin=0,mlin=0;
%}
%%
"//"[^\n]* {com++;}
"/*"[^*]*"*/" {mlin++; for(int i=0;i<yyleng;i++){ if(yytext[i]=='\n'){ lin++; }}}
%%
int yywrap(){
 return 1;
}

int main(){
yyin = fopen("in.txt","r");
yyout = fopen("out.txt","w");
yylex();
printf("\n %d: lines\n %d: multiline comments\n %d: single lines comments \n",lin,mlin,com);
return 0;
}



