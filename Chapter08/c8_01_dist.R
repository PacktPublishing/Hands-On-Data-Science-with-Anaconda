"
  Name     : c8_01_dist.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

a<-c(2,5)
b<-c(3,7)
z<-rbind(a,b)
dist(z, method = "euclidean")
plot(z,lwd=20)




