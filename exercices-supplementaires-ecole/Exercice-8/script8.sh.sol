#!/bin/bash

# script8.sh.sol : Compte les lignes de chaque fichier

# Utilisation: bash script8.sh.sol /home/nom-utilisateur/shell-lesson-data/exercise-data/writing/*.txt

for fichier in "$@"
do
    lignes=$(wc -l < "$fichier")
    echo "$fichier : $lignes lignes"
done

