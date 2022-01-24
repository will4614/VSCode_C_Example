#############################################################################
# File name:  Makefile
# Author:     chadd williams
# Date:       Sept 1, 2021
# Class:      CS360
# Assignment: GitHub Classroom & VSCode Example
# Purpose:    Demonstrate how to use GitHub Classroom & VSCode
#############################################################################

all: bin bin/simpleCProgram

bin:
	mkdir -p bin

bin/simpleCProgram: bin/simpleCProgram.o
	gcc -o bin/simpleCProgram -g -Wall bin/simpleCProgram.o

bin/simpleCProgram.o: bin src/simpleCProgram.c
	gcc -c -o bin/simpleCProgram.o -g -Wall src/simpleCProgram.c

valgrind: bin/simpleCProgram
	valgrind -v --leak-check=yes --track-origins=yes --leak-check=full --show-leak-kinds=all bin/simpleCProgram

printMain:
	enscript -C -T 2 -p - -M Letter -Ec --color -fCourier8 src/simpleCProgram.c  | ps2pdf - bin/simpleCProgram.pdf
	
clean:
	rm -f bin/simpleCProgram bin/*.o
