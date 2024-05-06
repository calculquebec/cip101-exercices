#!/bin/bash

#SBATCH --account=def-sponsor00
#SBATCH --gpus-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=3G
#SBATCH --time=00:10:00
#SBATCH --job-name=crunch-gpu

# https://docs.alliancecan.ca/wiki/Python#Creating_and_using_a_virtual_environment

# Load required modules
module load StdEnv/2023 python/3.11

# Create the virtual environment onto the local node
virtualenv --no-download $SLURM_TMPDIR/env
source $SLURM_TMPDIR/env/bin/activate

pip install --no-index --upgrade pip
pip install --no-index -r requirements.txt

# Crunch some numbers, and profile it.
# Explore scalene arguments using scalene --help or https://github.com/plasma-umass/scalene
 scalene --cli --reduced-profile crunch.py --- --gpu
