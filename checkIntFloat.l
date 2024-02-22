%{
#include<stdio.h>
%}

DIGIT [0-9]

%%
^{DIGIT}* {printf("Integer\n");}
^{DIGIT}*[.]{DIGIT}+ {printf("Float\n");}
.* {printf("Invalid Input\n");}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("\nInput Value : ");
yylex();
return 0;
}
