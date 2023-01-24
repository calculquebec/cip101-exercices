# Exercice 05

## Installation/Install `BiocManager`

```
# module spider r-bundle-bioconductor
module load gcc r r-bundle-bioconductor
mkdir -p ~/.local/R/$EBVERSIONR/
export R_LIBS=~/.local/R/$EBVERSIONR/

R -e 'install.packages("BiocManager", repos="https://cloud.r-project.org/")'
```

--- 

1. Dans votre compte local, installer `BiocManager` et initialiser ce dernier, puis compter le nombre de librairie disponible à l'aide de `BiocManager::available()`.

2. Installer `Biostrings` et soumettez une tâche qui affiche le complément inverse de la chaîne d'ADN `ACTG`.
---

1. Locally, install `BiocManager` and initialize it. Then count the number of available libraries with `BiocManager::available()`.

2. Install `Biostrings` and submit a task that prints the reverse complement of `ACTG` DNA string.
