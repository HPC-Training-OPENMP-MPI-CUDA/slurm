#!/bin/bash
#SBATCH --job-name=mpi_job   # Job name
#SBATCH --output=mpi_nodes_%j.out # Output file
#SBATCH --error=mpi_nodes_%j.err  # Error file
#SBATCH --time=01:00:00             # Wall time limit (1 hour)
#SBATCH --nodes=2                   # Number of nodes
#SBATCH --ntasks=4                  # Total number of tasks
#SBATCH --ntasks-per-node=2         # One task per node
#SBATCH --partition=standard        # Partition name

# Load any required modules (example for OpenMPI)
export PATH=$PATH:/home/apps/spack/opt/spack/linux-cascadelake/git-2.48.1-u5cguesy67iipohqx6lx657kjlzr6fs7/bin
source /home/apps/spack/share/spack/setup-env.sh 
spack load openmpi/kmaehjs

sleep 30

# Run the compiled MPI program
mpirun -np 4 ./src/hello_mpi
