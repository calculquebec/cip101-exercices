#!/bin/bash

#SBATCH --account=def-sponsor00
#SBATCH --cpus-per-task=1
#SBATCH --time=00:01:00

module load python/3.10

python --version
