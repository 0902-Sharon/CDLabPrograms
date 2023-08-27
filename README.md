# Compiler Design Lab Programs Repository

Compiler Design Lab Programs repository! This repository contains a collection of programs for Compiler Design Lab.

## Table of Contents
1. [Introduction](#introduction)
2. [Programs](#programs)
3. [How to Run](#how-to-run)
4. [Contributing](#contributing)
5. [License](#license)

## Introduction

Compiler design is an essential part of computer science, and these lab programs will help you gain hands-on experience with lexers and parsers. Feel free to explore and use these programs for your learning and experimentation.

## Programs

Here's a list of the programs available in this repository:

1. [prog1](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog1) :
    1) LEX program to count number of words, lines, characters and whitespaces
    2) Yacc program to recognise strings of the form a^n b^n+m c^n
2. [prog2](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog2) :
   1) LEX program to count number of Positive and Negetive Integers, Fractions
   2) Yacc program to validate and evaluate a simple expression involving operators +,-,* and /
3. [prog3](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog3) :
   1) LEX program to count number of comment lines in a C program, eliminate them and copy that program to a separate file.
   2) Yacc program to recognise nested FOR LOOPS
4. [prog4](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog4) :
   1) LEX program to count number of identifiers, operators and keywords in a given input file
   2) Yacc program to recognise nested IF control statements and display number of levels of nesting
5. [prog5](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog5) :
   Write a YACC program recognise variable declaration statement in C and and display the number of variables declared
6. [prog6](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog6) :
   YACC program that reads C statements from an input file and converts it into quadruple and three address intermediate code
7. [prog7](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog7) :
   YACC program that identifies Function Definition of C language
8. [prog8](https://github.com/0902-Sharon/CDLabPrograms/tree/main/prog8) :
    YACC program that generates assembly language target code for valid arithmetic expressions

## How to Run

You can compile and run the programs using the following commands:

### To run just the lexer program:
```shell
lex file_name.l
cc lex.yy.c -ll
./a.out
```


### To run both lexer and yacc:
```shell
lex lex_file_name.l
yacc -d yacc_file_name.y
cc lex.yy.c y.tab.c -ll
./a.out
```


Replace lex_file_name.l and yacc_file_name.y with the respective file names you want to compile.


## Contributing

If you'd like to contribute to this repository, please follow these steps:

    Fork this repository.
    Create a new branch for your feature or bug fix.
    Make your changes and commit them with clear messages.
    Push your changes to your forked repository.
    Create a pull request to merge your changes into this repository.



## License

This repository is licensed under the MIT License.
