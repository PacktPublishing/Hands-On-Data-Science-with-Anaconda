"
  Name     : c8_23_randomNumbersFrom2normal.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(cluster)
set.seed(123)
n1<-200; mean1<-0; std1<-8
n2<-300; mean2<-80; std2<-8
set1<-cbind(rnorm(n1,mean1,std1), rnorm(n1,mean1,std1))
set2<-cbind(rnorm(n2,mean2,std2), rnorm(n2,mean2,std2))
x <- rbind(set1,set2)
