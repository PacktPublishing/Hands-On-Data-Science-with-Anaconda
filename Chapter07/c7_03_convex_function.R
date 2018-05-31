"
  Name     : c7_03_convex_function.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

x<-seq(-10,10,0.1)
a<-4
b<- -2
c<-10
y<-a*x^2+b*x+c
name<-"A convex function"
plot(x,y,type='l',main=name)
