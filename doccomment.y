/*
 * doccomment.y : Parser for a doxygen documentation comment
 */

%token
    AT              // Representing the @ in front of commands
    IDENTIFIER

// Commands
%token BRIEF PARAM RETURN DETAILS
%%
command_name: BRIEF
            | PARAM
            | RETURN
            | DETAILS

command: AT command_name


%%
#include "lex.yy.c"

int main()
{
    yyparse();
    yylex();
    return END;
}

yyerror(char *s)
{
    printf("\n Error: %s", s);
}

