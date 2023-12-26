#!/bin/bash

module load intel imkl openblas

make clean
make O=-O1
valgrind --leak-check=yes ./dgesv 128