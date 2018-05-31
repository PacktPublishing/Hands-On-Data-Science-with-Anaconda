"
  Name     : c3_04_save_RData.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

path<-"http://archive.ics.uci.edu/ml/machine-learning-databases/"
dataSet<-"iris/bezdekIris.data"
a<-paste(path,dataSet,sep='')
iris<-read.csv(a,header=F)
save(iris,file="c:/temp/iris.RData")




