"
  Name     : c9_07_Iris.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(ggvis)
x<-ggvis
y<-layer_points
iris %>% x(~Petal.Length,~Petal.Width,fill=~Species) %>% y()


