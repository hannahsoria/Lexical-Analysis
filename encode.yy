/**
 * encode.yy - that takes any character in a-z or A-Z and shifts it 13  
 * spaces forward in the alphabet, with wraparound from z back to a
 *
 * Hannah Soria
 * 2/29/24 
 */

%option noyywrap

%{
	
%}

lower [a-z]
upper [A-Z]

/**
	 * *yytext: gives the character that is currently being pointed at
	 * -'a': subtracts the ASCII value from the character mapping the chars to ints
	 * +13: this rotates 13 forward
	 * %25: modulo 26 ensures that there is wrap around if it exceeds 26
	 * +'a': this puts the ASCII value back in and therefore turns ints to chars again
*/
%%
{lower} {*yytext=((*yytext-'a'+13)%26)+'a';	printf("%c",*yytext);} 
{upper} {*yytext=((*yytext-'A'+13)%26)+'A';	printf("%c",*yytext);}
%%

int main(int argc, char *argv[]) {
	if(argc>1)
		yyin=fopen(argv[1],"r");
	yylex();
	return(0);
}
