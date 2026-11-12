%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGITO  [0-9]
SIGNO   [+-]

%%
{DIGITO}+                                                 printf("NUMERO \n");
{SIGNO}?{DIGITO}+(\.{DIGITO}+)?([eE]{SIGNO}?{DIGITO}+)?   printf("REAL \n");
[a-zA-Z][a-zA-Z0-9]*                                      printf("IDENTIFICADOR \n");
%%
