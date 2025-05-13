#!/bin/bash

#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=1:00:00
#SBATCH --account=def-sponsor00


# Il est important d'ajuster pour avoir les chemins absolus avec votre nom d'utilisateur.


# En Bash, le signe antislash (\) à la fin d'une ligne sert à indiquer
# que la commande continue sur la ligne suivante. Cela permet de couper
# une commande longue en plusieurs lignes pour améliorer la lisibilité.


bash script6.sh.sol /home/nom-utilisateur/shell-lesson-data/north-pacific-gyre/NENE01843A.txt \
/home/nom-utilisateur/shell-lesson-data/north-pacific-gyre/NENE02040Z.txt \
/home/nom-utilisateur/shell-lesson-data/north-pacific-gyre/NENE02043B.txt
