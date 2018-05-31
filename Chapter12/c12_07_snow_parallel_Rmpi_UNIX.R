"
  Name     : c12_07_snow_parallel_UNIX.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/14/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(snow)
library(parallel)
#library(Rmpi)
myFunction<-function(n) {
    a<-rnorm(n)
    final<-log(abs(a))+a^3+2*a;
    return(final)
}
#
nCores=11;
#Using multicore
system.time(mclapply(rep(5E6,11),myFunction,mc.cores=nCores))
#Using snow via MPI
system.time(sapply(rep(5E6,11),myFunction))
#cl <- getMPIcluster()
cl <- makeCluster(c("localhost","localhost"), type = "SOCK")
system.time(parSapply(cl,rep(5E6,11),myFunction))
