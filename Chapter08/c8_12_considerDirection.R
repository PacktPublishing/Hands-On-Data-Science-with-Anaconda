"
  Name     : c8_12_considerDirection.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

angles<-seq(0,380,30)
y<-cos(angles)
y2<-round(y,2)
z<-cbind(angles,y2)
colnames(z)<-c("ANGLE","cos(angle)")
print(z)

