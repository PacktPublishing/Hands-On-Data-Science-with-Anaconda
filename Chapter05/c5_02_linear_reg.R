"
  Name     : c5_02_linear_reg.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

set.seed(12345)
x<-1:100
a<-4
beta<-5
errorTerm<-rnorm(100)
y<-a+beta*x+errorTerm
lm(y~x)

