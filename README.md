# U-LexAnalyser
# Common-LexAnalyzer 
Lexical Analyzer for Programming Languages Class. This is a program with the purpose of analyzing the contents of a file, it may be a .txt,.c,.java,etc. With this being said, it will detect the tokens it was made to detect, it may not be the syntax that the language uses so it will mark unknown syntax as an error.

## Tokens Detected

* Reserved words: “int” “float” “if” “then” “else” "while" “read” “write”
* Punctuation tokens: “,” “;” “(” “)” “{” “}”
* Relational tokens: “<” “=” "<=" ">=" "!="
* Arithmetic and Logic operations: “+” “-” “*” “/”
* Assignment operation: “:=”
* Numbers are expressed by the following regular expression:
[1-9][0-9]* | 0(c|C)[0-7]+ | 0(x|X)[0-9A-Fa-f]+ | [+-]?[0-9]*”.”[0-9]+([eE][-+]?[0-9]+)?
* Identifiers are expressed by the following regular expression: [A-Za-z_][A-Za-z0-9_]*
* Comments are similar to those in C "/* comment */"and can span multiple lines.

# How to Compile
### Windows Users
1. Use a real OS

### Linux Users
1. Compile the analyzer.l file using ```flex analyzer.l```
2. A file named lex.yy.c is generated, that is compiled using gcc with the following command ```gcc lex.yy.c -lfl```
3. An output file is generated named a.out, or if using the -o flag, it will have the name indicated.

### Mac Users
1. Compile the analyzer.l file using ```flex analyzer.l```
2. A file named lex.yy.c is generated, that is compiled using gcc with the following command ```gcc lex.yy.c -f```
3. An output file is generated named a, or if using the -o flag, it will have the name indicated.

# How to Run
### Windows Users
1. Use a real OS

### Linux Users
1. To input a file to analyze use ```./name.out < filename.*```


### Mac Users
1. To input a file to analyze use ```./name.out < filename.*```

# Output generated
A table will be shown in your terminal with the types of tokens found and the amount found. The types of tokens found are the following.

### Token Types
* Reserved
* Puntuation
* Relational
* Arithmetic&Logical
* Assignment
* Number (I) - Integer
* Number (O) - Octal
* Number (H) - Hex
* Number (F) - Float
* Identifier
* Comment (M) - Multiline
* Comment (S) - Single Line
* Error (Anything that is not recognized by the code)

For the final count, number and comment tokens are combined without checking their type.

| Project By: ```Ashfaaq``` & ```Prachi``` |
