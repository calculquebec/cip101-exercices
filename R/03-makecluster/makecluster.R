library(doParallel)

# Create an array from the NODESLIST environnement variable
nodeslist = unlist(strsplit(Sys.getenv("NODESLIST"), split=" "))

# Create the cluster with the nodes name. One process per count of node name.
# nodeslist = node1 node1 node2 node2, means we are starting 2 processes on node1, likewise on node2.
cl = makeCluster(nodeslist, type = "PSOCK")
registerDoParallel(cl)

# Compute (Source : https://cran.r-project.org/web/packages/doParallel/vignettes/gettingstartedParallel.pdf)
x <- iris[which(iris[,5] != "setosa"), c(1,5)]
trials <- 10000

foreach(icount(trials), .combine=cbind) %dopar%
    {
    ind <- sample(100, 100, replace=TRUE)
    result1 <- glm(x[ind,2]~x[ind,1], family=binomial(logit))
    coefficients(result1)
    }

# Don't forget to release resources
stopCluster(cl)
