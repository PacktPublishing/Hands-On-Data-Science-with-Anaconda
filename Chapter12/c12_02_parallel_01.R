
#http://gforge.se/2015/02/how-to-go-parallel-in-r-basics-tips/

library(parallel)
n_cores <- detectCores() - 1
cl <- makeCluster(n_cores)
parLapply(cl, 2:4,function(exponent) 2^exponent)
stopCluster(cl)


c2<-makeCluster(n_cores)
base <- 2
parLapply(c2, 2:4, function(exponent) base^exponent)
stopCluster(c2)

Error in checkForRemoteErrors(val) : 
  3 nodes produced errors; first error: object 'base' not found


c3<-makeCluster(n_cores)
base <- 2
clusterExport(c3, "base")
parLapply(c3, 2:4, function(exponent)  base^exponent)
stopCluster(c3)


c4<-makeCluster(no_cores)
clusterExport(c4, "base")
base <- 4
# Run
parLapply(c4, 2:4, function(exponent) 
            base^exponent)

stopCluster(c4)