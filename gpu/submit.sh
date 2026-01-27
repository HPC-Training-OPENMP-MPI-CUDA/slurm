#!/bin/bash

##Resource Request

#SBATCH --job-name CudaJob
#SBATCH --output result.out   ## filename of the output; the %j is equivalent to jobID; default is slurm-[jobID].out
#SBATCH --partition=gpu  ## the partitions to run in (comma seperated)
#SBATCH --ntasks=1  ## number of tasks (analyses) to run
##SBATCH --exclusive
#SBATCH --time=0-00:10:00  ## time for analysis (day-hour:min:sec)

##Load the CUDA module
. /home/apps/spack/share/spack/setup-env.sh
spack load cuda/4gueqc3


## Run the script
./src/stats
