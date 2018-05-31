"
  Name     : c8_13_Rmixmod_bar.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(Rmixmod)
data(birds)
x <- mixmodCluster(birds,2)
bb<-barplotCluster
bb(x["bestResult"], birds)
bb(x["bestResult"], birds, variables=c(2,3,4))
bb(x["bestResult"], birds, variables=c("eyebrow","collar"))





