"
  Name     : c12_13_parallel.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/27/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

  
library(parallel)
detectCores()
myFunction<- function(iter=1,n=5){
    x<- rnorm(n, mean=0, sd=1 )
    eps <- runif(n,-2,2)
    y <- 1 + 2*x + eps
    result<-lm( y ~ x )
    final<-cbind(result$coef,confint(result))
    return(final) 
}
#
m<-5000
n2<-5000
system.time(lapply(1:m,myFunction,n=n2))
system.time(mclapply(1:m,myFunction,n=n2))




