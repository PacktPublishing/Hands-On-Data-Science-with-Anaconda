"
  Name     : c7_10_3D.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(scatterplot3d)
x<-seq(-2,2,0.05)
y<-seq(-2,2,0.05)
z<-(x^2-1)^2+(x^2*y-x-1)^2
name<-"3 dimensional graph" 
scatterplot3d(x, y, z, highlight.3d = TRUE, col.axis = "blue",
col.grid = "lightblue", main =name, pch = 2)




