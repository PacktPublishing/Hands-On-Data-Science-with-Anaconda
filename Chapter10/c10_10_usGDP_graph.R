"
  Name     : c10_10_usGDP_graph.R
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
title<-"US GDP"
xTitle<-"Year"
yTitle<-"US annual GDP"
x<-.usGDPannual$YEAR
y<-.usGDPannual$GDP
plot(x,y,main=title,xlab=xTitle,ylab=yTitle)


yTitle<-"Log US annual GDP"
plot(x,log(y),main=title,xlab=xTitle,ylab=yTitle)