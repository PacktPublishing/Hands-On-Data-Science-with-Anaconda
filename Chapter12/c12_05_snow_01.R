"
  Name     : c12_05_snow_01.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/14/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(snow)
cl <- makeSOCKcluster(c("localhost","localhost"))
clusterApply(cl, 1:2, get("+"), 3)
clusterEvalQ(cl, library(boot))
x<-1
clusterExport(cl, "x")
clusterCall(cl, function(y) x + y, 2)