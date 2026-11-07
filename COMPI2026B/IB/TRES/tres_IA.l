%{
/* Declaraciones y variables globales */
int n_lineas = 0;
int n_caracteres = 0;
%}

%%

\n      { n_lineas++; n_caracteres++; }
.       { n_caracteres++; }

%%

int main(int argc, char **argv) {
    yylex();
    printf("Total de líneas: %d\n", n_lineas);
    printf("Total de caracteres: %d\n", n_caracteres);
    return 0;
}

int yywrap() {
    return 1;
}
