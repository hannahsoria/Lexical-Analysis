/**
 * parser.yy - parser for Clite
 *
 *
 * Hannah Soria
 * 2/29/24 
 */

%option noyywrap

%%
[0-9]+ printf( "INTEGER-%s\n", yytext ); /* each specific value is specifc then printed with a label and the actual value */
("if"|"else"|"while"|"for"|"int"|"float")+ printf( "KEYWORD-%s\n", yytext);
[0-9.0-9]+ printf( "FLOAT-%s\n", yytext);
["=="|"<"|">"|"<="|">="]+ printf( "COMPARISON-%s\n", yytext);
["+"|"-"|"*"|"/"]+ printf( "OPERATOR-%s\n", yytext);
[a-zA-Z^"if"|"else"|"while"|"for"|"int"|"float"]+ printf( "IDENTIFIER-%s\n", yytext);
["{"] printf( "OPEN_BRAC-%s\n", yytext);
["}"] printf( "CLOSE-BRAC-%s\n", yytext);
["("] printf( "OPEN-PAREN-%s\n", yytext);
[")"] printf( "CLOSE-PARE-%s\n", yytext);
[";"]
[ \t\n]+          /* eat up whitespace */
"{"[^{}\n]*"}"     /* eat up one-line comments */

%%

int main(int argc, char *argv[]) {
	if(argc>1)
		yyin=fopen(argv[1],"r");
	yylex();
	return(0);
}