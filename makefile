#Para icx, module load intel imkl openblas

CC = gcc

reportflags.gcc = -fopt-info-optall-optimized 
reportflags.icx = -qopt-report-phase=vec 

libraryflags.gcc = -lopenblas -g -lm
libraryflags.icx = -qmkl=sequential -lmkl_intel_lp64

O = -O3 -march=native
#CFLAGS = $(O) $(reportflags.$(CC)) -Wall -Wextra
CFLAGS = $(O) -Wall -Wextra

# Default Lapacke: Openblas at CESGA
LDLIBS= $(libraryflags.$(CC)) 


dgesv: dgesv.o timer.o main.o

clean:
	$(RM) dgesv *.o *~
