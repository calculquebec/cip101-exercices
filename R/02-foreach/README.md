# Exercice 02

## Installation/Install `doParallel`

```
module load gcc/9.3.0 r/4.1.2
mkdir -p ~/.local/R/$EBVERSIONR/
export R_LIBS=~/.local/R/$EBVERSIONR/

R -e 'install.packages("doParallel", repos="https://cloud.r-project.org/")'
```

--- 

Soumettre une tâche qui exécute le script R `foreach.R`. 
Vous devez d'abords installer localement `doParallel`. 
Le compte est: `def-sponsor00`.

---

Submit a task thats execute R script `foreach.R`. 
First, you need to install `doParallel`. 
The sponsor account is: `def-sponsor00`.
