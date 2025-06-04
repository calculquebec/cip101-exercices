# Exercice 03

## Installation/Install `doParallel`

```
module load gcc/9.3.0 r/4.1.2
mkdir -p ~/.local/R/$EBVERSIONR/
export R_LIBS=~/.local/R/$EBVERSIONR/

R -e 'install.packages("doParallel", repos="https://cloud.r-project.org/")'
```

--- 

Soumettre une tâche qui exécute le script R `makecluster.R`. 
Vous devez d'abord installer localement `doParallel`, s'il n'est pas déjà présent. 
Le compte est: `def-sponsor00`.

---

Submit a task which executes the R script `makecluster.R`.
You'll need to first install `doParallel`, if it's not already installed. 
The sponsor account is: `def-sponsor00`.
