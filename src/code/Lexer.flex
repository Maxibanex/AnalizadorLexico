package code;
import static code.tokens;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\r,\n]+
%{
    public String strLexeme;
%}
%%
int |
if |
else |
while {strLexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"(" {strLexeme=yytext(); return Delimitador;}
")" {strLexeme=yytext(); return Delimitador;}
"{" {strLexeme=yytext(); return Delimitador;}
"}" {strLexeme=yytext(); return Delimitador;}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
{L} ({L}|{D})* {strLexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {strLexeme=yytext(); return Numero;}
{D}+("."{D}+)? {strLexeme=yytext(); return Numero;}
 . {return Error;}
