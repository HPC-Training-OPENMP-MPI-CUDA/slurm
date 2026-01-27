#!/bin/bash
#SBATCH --job-name=openmp_job        # Job name
#SBATCH --output=openmp_%j.out      # Output file
#SBATCH --error=openmp_%j.err       # Error file
#SBATCH --time=01:00:00              # Wall time limit (1 hour)
#SBATCH --ntasks=1                   # Number of tasks (1 for serial)
#SBATCH --cpus-per-task=4            # Number of CPU cores per task
#SBATCH --partition=standard         # Partition name

# Set the number of threads to the number of CPUs per task
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# print the hostname
hostname
sleep 30
# Run the compiled C program
./src/matrix
