
"
  Name     : c7_04_convex_function2.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

x<-seq(-4,4,0.1)
a<-1
b<-2
c<-3
myFunction<-function(x)a*x^2+b*x+c
y<-myFunction(x)
name<-"For a convex function:chord is above"
plot(x,y,type='l',main=name)
x1<--2
y1<-myFunction(x1)
x2<-3
y2<-myFunction(x2)
segments(x1, y1, x2, y2,col = par("fg"), lty = par("lty"), xpd = FALSE)



