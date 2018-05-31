"
  Name     : c8_11_rondomForest_plot.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(randomUniformForest)
data(iris)
ff<-unsupervised.randomUniformForest
x =ff(iris[,-5],mtry=1,nodesize = 2)
plot(x)




