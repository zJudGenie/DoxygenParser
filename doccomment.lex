/*
 * doccomment.lex : Scanner for a doxygen documentation comment
 */

%option noyywrap

%{
#include "doccomment.tab.h"
%}

COMMENT_START       "\/\*\*"
COMMENT_END         "\*\/"

%%

%%