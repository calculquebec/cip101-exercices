#!/bin/bash

#SBATCH --account=def-sponsor00
#SBATCH --time=00:05:00
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=512M

module load python/3.10

python mc-count.py -n ${SLURM_CPUS_PER_TASK:-1} text.txt text.txt text.txt text.txt
