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


clean:
	rm -f bin/simpleCProgram bin/*.o
