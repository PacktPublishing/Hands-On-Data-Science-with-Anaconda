"
  Name     : c10_09_usGDP.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

path<-"http://canisius.edu/~yany/RData/"
dataSet<-"usGDPannual"
con<-paste(path,dataSet,".RData",sep='')
load(url(con))


head(.usGDPannual)
dataSet<-"usGDPquarterly"
con<-paste(path,dataSet,".RData",sep='')
load(url(con))
head(.usGDPquarterly)

