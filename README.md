# DoxygenParser

DoxygenParser is a simple parser designed for educational purposes, specifically to learn and understand the basics of
Flex and Bison.

## Generation

To generate the compilable files:
- Parser: `bison -o generated/doccomment.tab.c -d doccomment.y`
- Scanner: `flex -o generated/doccomment.lex.c doccomment.lex`