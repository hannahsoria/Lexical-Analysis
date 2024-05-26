/**
 * task2.yy - reads in a text file and tells you the number of rows and characters
 * and the count for each vowel
 *
 * Hannah Soria
 * 2/29/24 
 */

%{
	int char_count = 0; /* count established for each vowel. rows, and characters */
	int row_count = 0;
	int a_count = 0;
	int e_count = 0;
	int i_count = 0;
	int o_count = 0;
	int u_count = 0;
%}
 

%%
[aA] {a_count++; char_count++;} /* increment counters for matching occurence */
[eE] {e_count++; char_count++;}
[iI] {i_count++; char_count++;}
[oO] {o_count++; char_count++;}
[uU] {u_count++; char_count++;}
\n {row_count++;};
. {char_count++;}
%%

int yywrap() {return 1;}

int main(int argc, char *argv[]) {
	if(argc>1)
		yyin=fopen(argv[1],"r");
	yylex();

	printf("The total number of a: %d\n", a_count); /* print results */
	printf("The total number of e: %d\n", e_count);
	printf("The total number of i: %d\n", i_count);
	printf("The total number of o: %d\n", o_count);
	printf("The total number of u: %d\n", u_count);
	printf("The total number of chars: %d\n", char_count);
	printf("The total number of rows: %d\n", row_count);

	return(0);
}
 