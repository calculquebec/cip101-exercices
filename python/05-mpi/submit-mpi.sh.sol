#!/bin/bash
#SBATCH --account=def-sponsor00
#SBATCH --time=00:30:00
#SBATCH --ntasks=4
#SBATCH --mem-per-cpu=3000M

# Will run ntask accross available cores on nodes (same or different)
# Specify
# #SBATCH --ntasks=4
# #SBATCH --nodes=2
# to run 4 tasks accross two nodes.

module load StdEnv/2023 python/3.11 mpi4py

# create the virtual environment on each node :
srun --ntasks $SLURM_NNODES --tasks-per-node=1 bash << EOF
virtualenv --no-download $SLURM_TMPDIR/env
source $SLURM_TMPDIR/env/bin/activate

pip install --no-index --upgrade pip
pip install --no-index numpy==1.26.4
EOF

# activate only on main node
source $SLURM_TMPDIR/env/bin/activate;
# srun exports the current env, which contains $VIRTUAL_ENV and $PATH variables
srun python crunch.py --cpu -n 1111;
