%{
#include<stdio.h>
#include<stdlib.h>
int pi=0,ni=0,pf=0,nf=0;
%}
%%
[+]?[0-9]*[.][0-9]+ {pf++;}
[-][0-9]*[.][0-9]+ {nf++;}
[-][0-9]*[/][+]?[0-9]+ {nf++;}
[+]?[0-9]*[/][-][0-9]+ {nf++;}
[-][0-9]*[/][-][0-9]+ {pf++;}
[+]?[0-9]*[/][+]?[0-9]+ {pf++;}
[+]?[0-9]+ {pi++;}
[-][0-9]+ {ni++;}
"\n" {return 0;}
"." ;
%%
int yywrap(){
 return 1;
}
int main(){
printf("enter: \n");
yylex();
printf("\n %d: positive fractions\n %d: negetive fractions\n %d: positive integers\n %d: negetive integers \n",pf,nf,pi,ni);
return 0;
}

