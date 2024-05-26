CS333 - Project #2 - README
Hannah Soria
02/29/24

Directory Layout:
Project2_hmsori25/
|
|__/encode.yy
|__/task2.yy
|__/task3.yy
|__/parser.yy
|__/test.swift
|__/lex.yy.c
|__/test.txt
|__/test2.txt
|__/p2example.c
|__/p2_htmltest.txt
|__/webpage.txt
|__/readme.txt

 Compile:
	flex encode.yy
	gcc -o encode lex.yy.c
 Run:
	./encode test.txt
 Output:
	Uryyb!
	Tbbqolr!
	NOPnop%  



 Compile:
	flex task2.yy
	gcc -o task2 lex.yy.c
 Run:
	./task2 test.txt
 Output:
	The total number of a: 2
	The total number of e: 2
	The total number of i: 0
	The total number of o: 3
	The total number of u: 0
	The total number of chars: 20
	The total number of rows: 2



 Compile:
	flex task3.yy
	gcc -o task3 lex.yy.c
 Run:
	./task3 p2_htmltest.txt
 Output:
	This is a page title   
	Here is a header 
	 Here is some body text in a paragraph 
	 Here is a link to cs.colby.edu inside a paragraph.   
	This is the final paragraph. 



 Compile:
	flex parser.yy
	gcc -o parser lex.yy.c
 Run:
	./parser p2_htmltest.txt
 Output:
	KEYWORD-int
	IDENTIFIER-main
	OPEN-PAREN-(
	CLOSE-PARE-)
	OPEN_BRAC-{
	KEYWORD-int
	IDENTIFIER-a
	COMPARISON-=
	INTEGER-6
	KEYWORD-int
	IDENTIFIER-b
	COMPARISON-=
	FLOAT-5.0
	KEYWORD-if
	OPEN-PAREN-(
	IDENTIFIER-a
	COMPARISON-<
	IDENTIFIER-b
	CLOSE-PARE-)
	OPEN_BRAC-{
	IDENTIFIER-a
	COMPARISON-=
	IDENTIFIER-a
	OPERATOR-+
	IDENTIFIER-b
	CLOSE-BRAC-}
	CLOSE-BRAC-}


 Compile:
	swiftc test.swift
 Run:
	./test
 Output:
	Hello World!
	paris
	london
	milan
	paris
	milan


The rest of the files are example code to be used to run the above programs
