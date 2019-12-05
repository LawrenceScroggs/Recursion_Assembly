.PHONY: clean
CFLAGS= -std=c11 -O0 -Wall

all: hw5 hw5a1

hw5: hw5.o Catalan.o
	gcc -g -o hw5 $(CFLAGS) hw5.o Catalan.o

hw5a1: hw5.o assb1.o
	gcc -g -o hw5a1 $(CFLAGS) hw5.o assb1.o

hw5.o: hw5.c
	gcc -c -g -o hw5.o $(CFLAGS) hw5.c

Catalan.o: Catalan.c
	gcc -c -g -o Catalan.o $(CFLAGS) Catalan.c

assb1.o: assb1.S
	as --64 -o assb1.o assb1.S

clean:
	rm -f *.o hw5 hw5a1
