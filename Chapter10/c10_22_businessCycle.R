"
  Name     : c10_22_businessCycle.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

path<-"http://canisius.edu/~yany/RData/"
dataSet<-"businesscycle"
link<-paste(path,dataSet,".RData",sep='')
load(url(link))
