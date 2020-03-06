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
