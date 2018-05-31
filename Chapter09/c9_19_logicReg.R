
"
  Name     : c9_19_logicReg.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(LogicReg)
data(logreg.testdat)
y<-logreg.testdat[,1]
x<-logreg.testdat[, 2:21]
n=1000
n2=25000
set.seed(123)
myanneal<-logreg.anneal.control(start=-1,end=-4,iter=n2,update=n)
output<-logreg(resp=y,bin=x,type=2,select = 1,ntrees=2,anneal.control=myanneal)
plot(output)






