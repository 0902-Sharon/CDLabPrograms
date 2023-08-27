%{
#include<stdio.h>
#include<stdlib.h>
typedef char *string;

struct{
 string res,op1,op2;
 char op;
}code[100];

int idx=-1;
string addT(string, string, char);
void tc();
%}
%union{
char *exp;
}
%token <exp> IDEN NUM
%type <exp> EXP

%left '+' '-'
%left '*' '/'
%%
S:S STMT
|
;
STMT:EXP'\n'
;
EXP:EXP'+'EXP {$$ = addT($1,$3,'+');}
|EXP'-'EXP {$$ = addT($1,$3,'-');}
|EXP'*'EXP {$$ = addT($1,$3,'*');}
|EXP'/'EXP {$$ = addT($1,$3,'/');}
|'('EXP')' {$$ = $2;}
|IDEN'='EXP {$$ = addT($1,$3,'=');}
|IDEN {$$ = $1;}
|NUM {$$ = $1;}
;
%%
int main(){
printf("\nenter: \n");
yyparse();
tc();
printf("\nsuccess\n");
return 0;
}
int yyerror(){
printf("\nsome error\n"); exit(0);
}
string addT(string op1,string op2,char op){
	if(op == '='){
		code[idx].res = op1;
		return op1;
	}
	idx++;
	string res=malloc(3);
	sprintf(res,"@%c",idx + 'A');
	
	code[idx].op1 = op1;
	code[idx].op2 = op2;
	code[idx].op = op;
	code[idx].res = res;
	return res;
}

void tc(){
	for(int i=0;i<=idx;i++){
		string instr;
		if(code[i].op == '+') instr =  "ADD";
		else if(code[i].op == '-') instr = "SUB";
		else if(code[i].op == '*') instr = "MUL";
		else if(code[i].op == '/') instr = "DIV";
		
		printf("LOAD\t R1, %s\n",code[i].op1);
		printf("LOAD\t R2, %s\n",code[i].op2);
		printf("%s\t R3, R1, R2\n",instr);
		printf("STORE\t %s, R3\n",code[i].res);
	}
}






