#!/bin/bash

#SBATCH --account=def-sponsor00   # replace this with your supervisors account
#SBATCH --nodes=1                 # number of node MUST be 1
#SBATCH --cpus-per-task=4         # number of processes
#SBATCH --mem-per-cpu=1048M       # memory; default unit is megabytes
#SBATCH --time=00:00:10           # time (HH:MM:SS)

# Submmision command: sbatch submit_foreach.sh.sol

module load gcc/9.3.0 r/4.1.2

export R_LIBS=~/.local/R/$EBVERSIONR/

R -f foreach.R
