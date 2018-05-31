"
  Name     : c5_10_isna.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


x<-c(NA,2,3,4,NA)
y<-na.omit(x)
m<-mean(y)

x[is.na(x)]<-m
