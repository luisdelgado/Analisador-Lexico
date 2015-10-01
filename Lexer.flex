%%

%class Lexer
%standalone

ws = [ \t\r\n]
coment = "/*"~"*/"
delim = [(){}[]]
digit = [1-9] 
id = (_|[a-z]|[A-Z])(_|[a-z]|[A-Z]|{digit}|0)*
numeroI = ({digit}+(0|{digit})*)|0 
fraci = {numeroI}+(\.numeroI*)

%%
"class" {System.out.println(yytext());}
"public" {System.out.println(yytext());}
"extends" {System.out.println(yytext());}
"static" {System.out.println(yytext());}
"void" {System.out.println(yytext());}
"int" {System.out.println(yytext().toString());}
"boolean" {System.out.println(yytext());}
"while" {System.out.println(yytext());}
"if" {System.out.println(yytext());}
"else" {System.out.println(yytext());}
"return" {System.out.println(yytext());}
"||" {System.out.println(yytext());}
"&&" {System.out.println(yytext());}
"==" {System.out.println(yytext());}
"!=" {System.out.println(yytext());}
"<" {System.out.println(yytext());}
"<=" {System.out.println(yytext());}
">" {System.out.println(yytext());}
">=" {System.out.println(yytext());}
("+" | "-" | "*" | "/" | "%") {System.out.println(yytext());} 
false {System.out.println(yytext());}
true {System.out.println(yytext());}
this {System.out.println(yytext());}
new {System.out.println(yytext());}
{ws} {}
{coment} {}
{delim} {System.out.println(yytext());}
{digit} {System.out.println(yytext());}
{id} {System.out.println(yytext());}
{numeroI} {System.out.println(yytext());}
{fraci} {System.out.println(yytext());}