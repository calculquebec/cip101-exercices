#!/bin/bash

#SBATCH --account=def-sponsor00
#SBATCH --time=00:01:00
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=512M

module load python/3.10

python seq-count.py text.txt text.txt
