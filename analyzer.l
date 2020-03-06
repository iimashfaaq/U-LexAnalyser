/* This is the declaration section */
%{
/* We declare symbols for counting the symbol types */
	int reservedSymbol, puntuationSymbol, relationalSymbol,arithmeticlogicSymbol,assignmentSymbol,numberSymbol,identifierSymbol,commentSymbol,multiCommentSymbol,errorSymbol;
%}

/* This is the rule definition (reservedSymbol, puntuationSymbol, relationalSymbol, arithmeticlogic, number, identifier)/
%%
int			{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }
float		{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }
if			{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }
then		{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }
else		{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }
while		{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }
read		{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }
write		{ reservedSymbol++;  printf("Reserved\t\t\t%s\n",yytext); }

\(		{ puntuationSymbol++;	printf("Puntuation\t\t\t%s\n",yytext); }						
\)		{ puntuationSymbol++;	printf("Puntuation\t\t\t%s\n",yytext); }						
\{		{ puntuationSymbol++;	printf("Puntuation\t\t\t%s\n",yytext); }	
\}		{ puntuationSymbol++;	printf("Puntuation\t\t\t%s\n",yytext); }	
,		{ puntuationSymbol++;	printf("Puntuation\t\t\t%s\n",yytext); }
;		{ puntuationSymbol++;	printf("Puntuation\t\t\t%s\n",yytext); }

\<		{ relationalSymbol++;	printf("Relational\t\t\t%s\n",yytext); }
=		{ relationalSymbol++;	printf("Relational\t\t\t%s\n",yytext); }
\<=		{ relationalSymbol++;	printf("Relational\t\t\t%s\n",yytext); }
\>=		{ relationalSymbol++;	printf("Relational\t\t\t%s\n",yytext); }
!=		{ relationalSymbol++;	printf("Relational\t\t\t%s\n",yytext); } 

\+		{ arithmeticlogicSymbol++;	printf("Arithmetic&Logic\t\t%s\n",yytext); }						
-		{ arithmeticlogicSymbol++;	printf("Arithmetic&Logic\t\t%s\n",yytext); } 						
\*		{ arithmeticlogicSymbol++;	printf("Arithmetic&Logic\t\t%s\n",yytext); } 						
\/		{ arithmeticlogicSymbol++;	printf("Arithmetic&Logic\t\t%s\n",yytext); }

:=		{ assignmentSymbol++;	printf("Assignment\t\t\t%s\n",yytext); }

[0-9][0-9]*									{ numberSymbol++;	printf("Number (I)\t\t\t%s\n",yytext); }
0(c|C)[0-7]+								{ numberSymbol++;	printf("Number (O)\t\t\t%s\n",yytext); }
0(x|X)[0-9A-Fa-f]+  						{ numberSymbol++;	printf("Number (H)\t\t\t%s\n",yytext); }
[+-]?[0-9]*"."[0-9]+([eE][-+]?[0-9]+)?		{ numberSymbol++;	printf("Number (F)\t\t\t%s\n",yytext); }

[A-Za-z_][A-Za-z0-9_]*			{ identifierSymbol++;	printf("Identifier\t\t\t%s\n",yytext); }

"/*"((("*"[^/])?)|[^*])*"*/"		{ commentSymbol++;	printf("Comment (M)\t\t\t%s\n",yytext); }
"//".*								{ commentSymbol++;	printf("Comment (S)\t\t\t%s\n",yytext); } 

\n
\t
\r
\v
\f
" "
. 		{ errorSymbol++;	printf("Error\t\t\t\t%s\n",yytext); }

%%

/* This is the main program */
int main(void) {
	printf("Token/Symbol\t\t\tValue\n"); 	/* Creation of the header for table formed */
	yylex();       							/* Defined by flex */
	printf("Final Symbol Count\n"); 		/* Print the final symbol count header */
	printf("Reserved\tPuntuation\tRelational\tArith/Logic\tAssignment\tNumber\tComment\tErrors\n"); /* We print the name of each column */
	printf("%d\t\t%d\t\t%d\t\t%d\t\t%d\t\t%d\t%d\t%d\n", reservedSymbol, puntuationSymbol, relationalSymbol, arithmeticlogicSymbol,assignmentSymbol,numberSymbol,commentSymbol+multiCommentSymbol,errorSymbol); 

	return 0;
}
