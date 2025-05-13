#!/bin/bash
#SBATCH --account=def-sponsor00
#SBATCH --mem-per-cpu=100M
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=3

module load python/3.11

python script-python.py
