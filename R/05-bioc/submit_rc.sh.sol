#!/bin/bash

#SBATCH --account=def-sponsor00   # replace this with your supervisors account
#SBATCH --nodes=1                 # number of node MUST be 1
#SBATCH --cpus-per-task=1         # number of processes
#SBATCH --mem-per-cpu=1048M       # memory; default unit is megabytes
#SBATCH --time=00:01:00           # time (HH:MM:SS)

# Submmision command: sbatch submit_rc.sh.sol

module load r r-bundle-bioconductor

export R_LIBS=~/.local/R/$EBVERSIONR/

R -f reverse_complement.R
