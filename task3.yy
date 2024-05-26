/**
 * task3.yy - strips an html file of tags, single-line comments, 
 * and extraneous whitespace
 *
 * Hannah Soria
 * 2/29/24 
 */

%option noyywrap

%{

%}

%%
(<h[1-6]>)|(<title>)|(<p>)|(<ol>)|(<li>) printf("\n");   /* return to new line if it is title, h, list beginning and ending, and paragraphs*/
("<!--"((.)|(\n))*"-->")                               /* clear up html comments */
("<"[^<>\n]*">")                                        /* clear up html comments */
([[:space:]][[:space:]]+)   printf(" ");				/* keep spaces between words */


%%

int main(int argc, char *argv[]) {
	if(argc>1)
		yyin=fopen(argv[1],"r");
	yylex();
	return(0);
}
