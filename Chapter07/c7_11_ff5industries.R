"
  Name     : c7_11_ff5industries.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

path<-"http://canisius.edu/~yany/RData/ff5industries.RData"
load(url(path))
retMatrix<-as.matrix(.ff5industries[,2:6]/100)
n1<-ncol(retMatrix)
w<-rep(1/n1,n1)
A<-1.5
bigValue=100
#
utilityFunction<-function(w){
    portfolioRet<-retMatrix%*%w
    x<-portfolioRet
    loss<-(sum(w)-1)^2*bigValue
    u=-(mean(x)-0.5*A*var(x))+loss
    return(u)
}
optim(w,utilityFunction,lower =0, upper =0.5)







