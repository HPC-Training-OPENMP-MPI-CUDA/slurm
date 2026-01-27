#!/bin/bash
#SBATCH --job-name=serial_c_job      # Job name
#SBATCH --output=serial_c_%j.out    # Output file
#SBATCH --error=serial_c_%j.err     # Error file
#SBATCH --time=01:00:00              # Wall time limit (1 hour)
#SBATCH --ntasks=1                   # Number of tasks (1 for serial)
#SBATCH --cpus-per-task=1            # Number of CPU cores per task
#SBATCH --partition=standard         # Partition name

# print the hostname
hostname
# Run the compiled C program
./src/hello
