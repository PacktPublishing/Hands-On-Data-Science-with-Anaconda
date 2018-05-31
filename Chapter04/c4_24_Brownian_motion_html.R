"
  Name     : c4_24_brownian_motion_html.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(animation)
a<- c(3, 3, 1, 0.5)
b<- c(2, 0.5, 0)
part1<-"Random walk on the 2D plane: for each point"
part2<-"(x, y), x = x + rnorm(1) and y = y + rnorm(1)."
des<-c(part1,part2)
titleName<-"Demonstration of Brownian Motion"
#
saveHTML({ 
  par(mar =a, mgp =b, tcl = -0.3,cex.axis = 0.8, cex.lab = 0.8, cex.main = 1)
  ani.options(interval = 0.05, nmax = ifelse(interactive(),150, 10))
  brownian.motion(pch = 21, cex = 5, col = "red", bg = "yellow")
  },description =des,title = titleName)