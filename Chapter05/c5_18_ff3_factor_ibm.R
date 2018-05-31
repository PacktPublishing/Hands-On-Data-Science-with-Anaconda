"
  Name     : c5_18_ff3_factor_ibm.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

con<-url("http://canisius.edu/~yany/RData/ff3monthly.RData")
load(con)
head(.ff3monthly)
x<-read.csv("http://canisius.edu/~yany/data/ibmMonthly.csv")
stock<-ret_f(x)
final<-merge(stock,.ff3monthly)
y<-final$RET
x<-as.matrix(data.frame(final[,3:5]))
summary(lm(y~x))

