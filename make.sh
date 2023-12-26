#!/bin/bash

module load intel imkl openblas

i=1024



make clean
echo -e "Optimizacion: icx O=-O0\n"
make O=-O0 CC=icx
./dgesv $i
echo -e "\n"

make clean
echo -e "Optimizacion: icx O=-O1\n"
make O=-O1 CC=icx
./dgesv $i
echo -e "\n"

make clean
echo -e "Optimizacion: icx O=-O2\n"
make O=-O2 CC=icx
./dgesv $i
echo -e "\n"

make clean
echo -e "Optimizacion: icx O=-O3\n"
make O=-O3 CC=icx
./dgesv $i
echo -e "\n"

make clean
echo -e "Optimizacion: icx O="-O3 -march=native"\n"
make O="-O3 -march=native" CC=icx
./dgesv $i
echo -e "\n"

make clean
echo -e "Optimizacion: icx O="-Ofast -march=native" \n"
make O="-Ofast -march=native" CC=icx
./dgesv $i
echo -e "\n"