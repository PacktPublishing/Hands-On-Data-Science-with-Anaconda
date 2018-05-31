"
  Name     : c3_01_iris_data.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

path<-"http://archive.ics.uci.edu/ml/machine-learning-databases/"
dataSet<-"iris/bezdekIris.data"
a<-paste(path,dataSet,sep='')
x<-read.csv(a,header=F)





