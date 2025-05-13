#!/bin/bash

# script6.sh.sol : Affiche les noms des fichiers passés en argument
# Utilisation: bash script6.sh.sol file1.txt file2.txt file3.txt



echo "Fichiers reçus :"
for fichier in "$@"
do
    echo "$fichier"
done


