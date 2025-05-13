#!/bin/bash

#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=1:00:00
#SBATCH --account=def-sponsor00


# Il est important d'ajuster pour avoir les chemins absolus avec votre nom d'utilisateur.


bash script7.sh.sol /home/nom-utilisateur/shell-lesson-data/exercise-data/creatures/*.dat
