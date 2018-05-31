"
  Name     : c4_22_Brownian_motion_anmation.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(animation)
ani.options(interval = 0.05, nmax = 30)
a<- c(3,3,2,0.5)
b<-c(2,0.5,0)
name<-"Brownian Motion"
par(mar=a,mgp=b,tcl=-0.3,cex.axis=0.8,cex.lab=0.8,cex.main=1)
brownian.motion(pch=21,cex=5,col="red",bg="yellow",main=name)



