%{
#include<stdio.h>
#include<stdlib.h>

int spaces=0,lines=0,words=0,chars=0;
%}
%%
"\n" { lines++; }
"\t" { spaces++; }
[ ] { spaces++; }
[^ \n\t#]+ { words++; chars+=yyleng;}
"#" {return 0;}
%%
int yywrap(){
	return 1;
}
int main(){
	printf("enter: \n");
	yylex();
	printf(" %d: spaces \n %d: lines \n %d: words \n %d: chars \n",spaces,lines,words,chars);
	return 0;
}

