CFLAGS=-g -Wall
OFLAGS=-Ofast
LFLAGS=-lm -lcblas
FILES=main.c tools.c kernels.c

all: dgemm

dgemm: $(FILES)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(LFLAGS)

gcc: CC=gcc
gcc: dgemm

clang: CC=clang
clang: dgemm

icx: CC=icx
icx: dgemm

clean:
	rm -f dgemm
