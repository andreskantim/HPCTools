# Default Lapacke: Openblas at CESGA
LDLIBS=-lopenblas -g -Wall -Wextra -lm

# Other systems (my Debian boxes, for example)
#LDLIBS=-llapacke

# Intel MKL at CESGA
# Module needed: imkl
# => module load openblas
# LDLIBS for intel compiler: icx (module needed: intel)
# Just invoke make like this: make CC=icx
#LDLIBS=-qmkl=sequential -lmkl_intel_lp64

dgesv: dgesv.o timer.o main.o

clean:
	$(RM) dgesv *.o *~
