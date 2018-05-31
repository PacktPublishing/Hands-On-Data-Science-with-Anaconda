"
  Name     : c7_02.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


a<--2
b<-10
c<-5
f<-function(x)-(a*x^2+b*x+c)

optim(0.3,f)


#optim(0,f,method="Brent",lower = -100, upper = 100)



f<-function(x)3*x^2-4*x+1
optim(0.3,f)
>optim(0,f,method="Brent",lower = -100, upper = 100)