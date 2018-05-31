"
  Name     : c5_23_number_outliers.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

 distance<-3
 x<-read.csv("c:/temp/^GSPCweekly.csv")
 p<-x$Adj.Close
 ret<-p[2:n]/p[1:(n-1)]-1
 m<-mean(ret)
 std<-sd(ret)
 ret2<-subset(ret,((ret-m)/std)>distance)
 n2<-length(ret2)


 head(x,2)
 m
 std
 length(ret)
 n2
