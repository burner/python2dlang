clang tree-sitter-python/src/parser.c -c -o parser.o
clang tree-sitter-python/src/scanner.cc -c -o scanner.o
ar cr libpythontree.a parser.o scanner.o
