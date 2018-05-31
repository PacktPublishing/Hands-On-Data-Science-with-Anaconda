"
  Name     : c7_06.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

A<-1.0
mean<-0.10
std<-0.5
set.seed(123)
nStock<-10
nRet<-50
#
n<-nStock*nRet
retMatrix<-matrix(rnorm(n,mean,std),nRet,nStock)
names<-paste("RET",1:nStock,sep='')
colnames(retMatrix)<-names
w<-rep(1/nStock,nStock)


