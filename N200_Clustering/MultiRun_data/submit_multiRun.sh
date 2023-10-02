#!/bin/bash
#SBATCH --job-name=s3ns05_R1
#SBATCH --array=1-5
#SBATCH -n  8 #Number of cores
#SBATCH -t 7-00:00:00 # Amount of time needed DD-HH:MM:SS
#SBATCH -p shared # Partition to submit to
#SBATCH --mem-per-cpu=400
#SBATCH -o %x_%j.out  # File to which STDOUT will be written, %j inserts jobid
#SBATCH -e %x_%j.err  # File to which STDERR will be written, %j inserts jobid
#SBATCH --mail-type=END
#SBATCH --mail-user=chattarajaniruddha@gmail.com

module load gcc/12.1.0-fasrc01 openmpi/4.1.3-fasrc01

srun -n $SLURM_NTASKS --mpi=pmix /n/home07/achattaraj/lammps-5Jun19/src/lmp_mpi -in Input_Run$SLURM_ARRAY_TASK_ID.in  
