"
  Name     : c4_07_shaded_area_standard_normal_dist.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

 x<-seq(-3,3,length=100)
 y<-dnorm(x,mean=0,sd=1)
 plot(x,y,type="b",lwd=3,col="black")
 x<-seq(-4,-2.33,length=100)
 y<-dnorm(x,mean=0,sd=1)
 polygon(c(-3,x,-2.33),c(0,y,0),col="red")

