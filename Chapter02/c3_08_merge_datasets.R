"
  Name     : c3_08_merge_datasets.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

set.seed(123)

nStocks<-4
nPeriods<-24

x<-runif(nStocks*nPeriods,min=-0.1,max=0.20)
a<-matrix(x,nPeriods,nStocks)

d1<-as.Date("2000-01-01")
d2<-as.Date("2001-12-01")

dd<-seq(d1,d2,"months")
stocks<-data.frame(dd,a)
colnames(stocks)<-c("DATE",paste('stock',1:nStocks,sep=''))


d3<-as.Date("1999-01-01")
d4<-as.Date("2010-12-01")
dd2<-seq(d3,d4,"months")

y<-runif(length(dd2),min=-0.05,max=0.1)
market<-data.frame(dd2,y)
colnames(market)<-c("DATE","MKT")


final<-merge(stocks,market)