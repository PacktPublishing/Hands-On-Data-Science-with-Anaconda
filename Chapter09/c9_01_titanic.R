"
  Name     : c9_01_titanic.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

path<-"http://canisius.edu/~yany/RData/"
dataSet<-"titanic"
link<-paste(path,dataSet,".RData",sep='')
con<-url(link)
load(con)
dim(.titanic)
head(.titanic)



