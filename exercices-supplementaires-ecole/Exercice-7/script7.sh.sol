#!/bin/bash

# script7.sh.sol : Affiche les 2 premières lignes de chaque fichier

# Utilisation: bash script7.sh.sol /home/nom-utilisateur/shell-lesson-data/exercise-data/creatures/*.dat


for fichier in "$@"
do
    echo "==> $fichier"
    head -n 2 "$fichier"
    echo
done

