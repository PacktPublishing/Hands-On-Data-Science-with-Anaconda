"
  Name     : c5_21_cholesky_02.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

set.seed(123)
n=1000
x<-matrix(rnorm(n),200,5)
y<-cor(x)
cholesky<-chol(y)


