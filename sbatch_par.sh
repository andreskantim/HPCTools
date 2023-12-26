#!/bin/bash
#SBATCH -N 1 #(5 cores per job)
#SBATCH -c 64 #(5 cores per job)
#SBATCH -t 00:05:00 #(10 min of execution time)
#SBATCH --mem=4GB #(4GB of memory)
##SBATCH --exclusive
 
make clean
make

for ((i=0;i<7;i++))
do
    THREAD=$((2**$i))
    echo Numero de hilos:$THREAD 
    export OMP_NUM_THREADS=$THREAD
    time ./dgesv 1024
done