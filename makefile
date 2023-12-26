#Para icx, module load intel imkl openblas

CC = gcc

reportflags.gcc = -fopt-info-optall-optimized #-fno-inline
reportflags.icx = -qopt-report=3

libraryflags.gcc = -lopenblas -g -lm -ftree-vectorize -fopenmp
libraryflags.icx = -qmkl=sequential -lmkl_intel_lp64

O = -O3 -march=native
#CFLAGS = $(O) $(reportflags.$(CC)) -g #-Wall -Wextra
CFLAGS = $(O)  #-Wall -Wextra

# Default Lapacke: Openblas at CESGA
LDLIBS= $(libraryflags.$(CC)) 


dgesv: dgesv.o timer.o main.o

clean:
	$(RM) dgesv *.o *~
