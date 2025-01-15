#!/bin/bash

#SBATCH --account=def-sponsor00
#SBATCH --time=00:05:00
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=512M

# https://docs.computecanada.ca/wiki/GNU_Parallel

module load python/3.10

parallel --verbose -j ${SLURM_CPUS_PER_TASK:-1} python ../02-count/seq-count.py ::: text.txt text.txt text.txt text.txt
