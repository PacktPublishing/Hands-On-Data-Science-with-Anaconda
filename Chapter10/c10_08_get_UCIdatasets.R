"
  Name     : c10_08_get_UCIdatasets.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

dataSet<-"UCIdatasets"
path<-"http://canisius.edu/~yany/RData/"
con<-paste(path,dataSet,".RData",sep='')
load(url(con))
dim(.UCIdatasets)
head(.UCIdatasets)


