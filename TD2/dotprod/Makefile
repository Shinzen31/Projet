CFLAGS=-g -Wall
OFLAGS=-O1
LFLAGS=-lm -lcblas
FILES=main.c tools.c kernels.c

all: dotprod

dotprod: $(FILES)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(LFLAGS)

gcc: CC=gcc
gcc: dotprod

clang: CC=clang
clang: dotprod

icx: CC=icx
icx: dotprod

clean:
	rm -f dotprod
