%{
#include<stdio.h>
#include<stdlib.h>
int i=0,k=0,o=0;
%}
%%
"return"|"include"|"int"|"float"|"char"|"double"|"if"|"else"|"while"|"main"|"void"|"for"|"switch" {printf("keyword\n"); k++;}
[\+\-\=\/\*\!\~]|"++"|"--" {printf("op\n"); o++;}
[a-zA-Z_] {printf("identifier\n"); i++;}
%%
int yywrap(){
 return 1;
}

int main(){
yyin = fopen("in.txt","r");
yyout = fopen("out.txt","w");
yylex();
printf("\n %d:identifiers\n %d: operators\n %d: keywords \n",i,k,o);
return 0;
}



