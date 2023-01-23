
#!/bin/bash

#SBATCH --account=def-sponsor00  # replace this with your supervisors account
#SBATCH --ntasks-per-node=2      # add this line to make sure that slurm uses multiple nodes
#SBATCH --ntasks=4               # number of tasks
#SBATCH --mem-per-cpu=512M       # memory; default unit is megabytes
#SBATCH --time=00:05:00          # time (HH:MM:SS)

# Submission command: sbatch submit_makecluster.sh.sol

module load gcc/9.3.0 r/4.1.2

export R_LIBS=~/.local/R/$EBVERSIONR/

# Export the nodes names.
# If all processes are allocated on the same node, NODESLIST contains : node1 node1 node1 node1
# Cut the domain name and keep only the node name
export NODESLIST=$(echo $(srun hostname | cut -f 1 -d '.'))

R -f makecluster.R
