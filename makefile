LEX = lex
YACC = yacc -d

CC = cc

LEXER = hello.l

OUTPUT := build
BIN := $(OUTPUT)/hello

all: run

build: $(OUTPUT)/lexer.c
	$(CC) $(OUTPUT)/lexer.c -o $(BIN) -ll

$(OUTPUT)/lexer.c:
	$(LEX) -o $(OUTPUT)/lexer.c $(LEXER)

run: build
	./$(BIN)


clean:
	rm -f *~ $(OUTPUT)/*