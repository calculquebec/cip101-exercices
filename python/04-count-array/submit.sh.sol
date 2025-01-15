#!/bin/bash

#SBATCH --account=def-sponsor00
#SBATCH --time=00:01:00
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=512M
#SBATCH --array=1-4

module load python/3.11

# Select a file according to which sub-task id
echo "Starting task $SLURM_ARRAY_TASK_ID"
filename=$(sed -n "${SLURM_ARRAY_TASK_ID}p" files-list.txt)

# Will count words in one file.
echo "Processing file : $filename"
python ../02-count/seq-count.py $filename > results.$SLURM_ARRAY_TASK_ID

# One could then aggregate the results with:
# cat results.* > all-results
