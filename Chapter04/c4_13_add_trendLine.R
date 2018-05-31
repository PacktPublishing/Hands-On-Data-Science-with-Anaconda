"
  Name     : c4_13_add_trendLine.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

x=seq(-4,4,by=0.05)
n<-length(x)
y=2+3*x + rnorm(n)
k<-coef(lm(y~x))
intercept<-k[1]
slope<-k[2]
y2<-intercept+slope*x
#
plot(x,y,type="p",col="red")
lines(x,y2,col="green")



