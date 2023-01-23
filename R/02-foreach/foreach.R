# library(foreach) # optional if using doParallel
library(doParallel)

# a very simple function
test_func <- function(var1, var2) {
    # some heavy workload
    sum <- 0
    for (i in c(1:3141593)) {
        sum <- sum + var1 * sin(var2 / i)
    }
    return(sqrt(sum))
}

# we will iterate over two sets of values, you can modify this to explore the mechanism of foreach
var1.v = c(1:8)
var2.v = seq(0.1, 1, length.out = 8)

# Use the environment variable SLURM_CPUS_PER_TASK to set the number of cores.
# This is for SLURM. Replace SLURM_CPUS_PER_TASK by the proper variable for your system.
# Avoid manually setting a number of cores.
ncores = Sys.getenv("SLURM_CPUS_PER_TASK") 

registerDoParallel(cores=ncores)# Shows the number of Parallel Workers to be used
print(ncores) # this how many cores are available, and how many you have requested.
getDoParWorkers()# you can compare with the number of actual workers

# be careful! foreach() and %dopar% must be on the same line!
foreach(var1=var1.v, .combine=rbind) %:% foreach(var2=var2.v, .combine=rbind) %dopar% {test_func(var1=var1, var2=var2)}
