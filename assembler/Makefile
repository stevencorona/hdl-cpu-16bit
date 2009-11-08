# Makefile for my simple assembler

CC=gcc
CCFLAGS=-ObjC -framework Foundation

assembler: main.o parser.o code.o
	${CC} ${CCFLAGS} main.o parser.o code.o -o bin/assembler

main.o: main.m parser.h
	${CC} -c main.m
code.o: code.m
	${CC} -c code.m
parser.o: parser.m
	${CC} -c parser.m
clean:
	rm -f *.o
	rm -f bin/assembler
