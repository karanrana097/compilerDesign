%{
#include <stdio.h>
%}

%%
[0-9]+	{fprintf(yyout, "%s is interger\n",yytext);}
[0-9]*\.[0-9]+	{fprintf(yyout, "%s is float\n",yytext);}
. ;
%%

int yywrap()
{
return 1;
}

int main(int argc,char *argv[])
{
extern FILE *yyin, *yyout;
yyin = fopen(argv[1],"r");
yyout = fopen(argv[2],"w");
yylex();
return 0;
}



