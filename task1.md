### Task 1: Implement a Solver for Systems of Linear Equations

**Objective**: Create a solver in C for systems of linear equations of
the form A * X = B, where A is a general (GE) matrix. You can choose
to implement either the Gauss elimination or Gauss-Jordan elimination
method.

**Instructions**:

1. **Implementation**: Your task is to provide your own implementation
of the solver. You must use the provided code skeleton as the basis
for your implementation.

2. **Working in Pairs**: You have the option to work on this task
either individually or in pairs with a partner.

3. **Function my_dgesv()**: You must implement your solver within the
function named my_dgesv() located in the dgesv.c file. You are allowed
to modify the function's signature to suit your implementation needs.

4. A Lapack dgesv implementation is used as **baseline**, to compare
the result of your solver.

**Compilation**:

A Makefile is provided: makefile. It should work out-of-the-box in
Finisterrae III (FT3): just run 'make' to build the binary.

The make recipe uses GCC as compiler and the Lapacke in Openblas as
baseline routine. This is determined by:

    #include <openblas/lapacke.h> -> in main.c
    LDLIBS=-lopenblas -> in makefile

You can compile using Intel's compiler and math lib (MKL) with
'make CC=icx' and commenting out the previous lines and uncommenting
these others:

    #include <mkl_lapacke.h> -> in main.c
    LDLIBS=-qmkl=sequential -lmkl_intel_lp64 -> in makefile

-> Of course, you previously need to load the modules intel and imkl
   in FT3 (module load intel imkl)

In other systems, different recipes can be needed. For example, I use
this in my Debian boxes with GCC:

    #include <lapacke.h> -> in main.c
    LDLIBS=-llapacke -> in makefile
