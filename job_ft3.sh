#!/bin/bash
#SBATCH -o %x-%J.out
#SBATCH -e %x-%J.error
#SBATCH --time=0-00:05:00 #requested time to run the job
#SBATCH -n 4   # number of concurrent jobs (64 cores/node)
#SBATCH --mem-per-cpu 1G

module load intel impi

#for ((i=0; i<4; i++))
#do	
	srun ./dgesv
	
#done
