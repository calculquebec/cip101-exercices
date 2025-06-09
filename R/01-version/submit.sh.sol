#!/bin/bash

#SBATCH --account=def-sponsor00
#SBATCH --cpus-per-task=1
#SBATCH --time=00:01:00

module load r/4.3.1

R --version
