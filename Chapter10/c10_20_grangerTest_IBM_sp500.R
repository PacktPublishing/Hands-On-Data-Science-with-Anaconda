"
  Name     : c10_20_grangerTest_IBM_sp500.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


ret_f<-function(x,ticker=""){
    n<-nrow(x)
    p<-x[,6]
    ret<-p[2:n]/p[1:(n-1)]-1
    output<-data.frame(x[2:n,1],ret)
    name<-paste("RET_",toupper(ticker),sep='')
    colnames(output)<-c("DATE",name)
    return(output)
}
x<-read.csv("http://canisius.edu/~yany/data/ibmDaily.csv",header=T)
ibmRet<-ret_f(x,"ibm")
x<-read.csv("http://canisius.edu/~yany/data/^gspcDaily.csv",header=T)
mktRet<-ret_f(x,"mkt")
final<-merge(ibmRet,mktRet)


library(lmtest)
grangertest(RET_IBM ~ RET_MKT, order = 1, data =final)

grangertest(RET_MKT ~ RET_IBM, order = 1, data =final)

