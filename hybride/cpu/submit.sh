#!/bin/bash

### Job name
#SBATCH --job-name=HelloHybrid

### 2 compute nodes
#SBATCH --nodes=2

### 4 MPI ranks
#SBATCH --ntasks=4

### 2 MPI ranks per node
#SBATCH --ntasks-per-node=2

### 3 tasks per MPI rank
#SBATCH --cpus-per-task=3

### the number of OpenMP threads 
source /home/apps/spack/share/spack/setup-env.sh

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
spack load openmpi/7yprpxn

### Run your parallel application
mpirun -np 4 ./src/hybrid
