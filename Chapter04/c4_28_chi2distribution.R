"
  Name     : c4_28_chi2distribution.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(animation)
n<-5
set.seed(123)
f<-function(n) rchisq(n,n)
clt.ani(FUN = f,mean=n,sd = sqrt(2*n))


