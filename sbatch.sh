#!/bin/bash
#SBATCH -J Benchmark       # Job name
#SBATCH -o Benchmark.%j   # Name of stdout output file(%j expands to jobId)
#SBATCH -e Benchmark.%j   # Name of stderr output file(%j expands to jobId)
#SBATCH -n 1
#SBATCH -c 8            # Cores per task requested (1 task job)
#SBATCH --mem-per-cpu=1G # memory per core demanded
#SBATCH -t 01:30:00      # Run time (hh:mm:ss) - 1.5 hours


./make.sh
	

