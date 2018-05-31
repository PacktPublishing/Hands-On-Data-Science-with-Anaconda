"
  Name     : c12_10_plyr_arrange.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/14/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(datasets)
library(plyr)
data(mtcars)
#
d1<-mtcars[with(mtcars, order(cyl, disp)), ]
d2<-arrange(mtcars, cyl, disp)
myCars = cbind(vehicle=row.names(mtcars), mtcars)
d3<-arrange(myCars, cyl, disp)
d4<-arrange(myCars, cyl, desc(disp))


