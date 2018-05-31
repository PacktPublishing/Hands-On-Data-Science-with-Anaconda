"
  Name     : c4_23_bisection_method.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(animation)
par(mar = c(4, 4, 1, 2))
myFunction<-function(x) x^2 - 4
title<-"Bisection method"
bisection.method(FUN=myFunction,main =title)
