mini:	mini.tab.c mini.lex.c
	gcc -o mini mini.tab.c lex.yy.c
mini.tab.c:	mini.y
	bison -dv mini.y
mini.lex.c:	mini.l
	flex mini.l
clean:
	rm  mini.tab.c mini.tab.h mini.output lex.yy.c mini
