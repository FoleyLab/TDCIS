LIB        = -L. -lm -lfftw3 -lblas -Lg2c
INCLUDE    = -I.
CFLAGS     = -O2
EXEC       = TDCIS.x
CXX        = g++

${EXEC}: TDCIS.c blas.o
	${CXX} ${CFLAGS} ${INCLUDE} ${LIB} TDCIS.c blas.o -o ${EXEC}

blas.o: blas.c blas.h
	${CXX} ${LIB} -c blas.c ${CFLAGS}

clean:
	rm -f *.o

%.o: $.cpp
	${CXX} -c ${CFLAGS} ${INCL} -cpp -o $*.o $<

