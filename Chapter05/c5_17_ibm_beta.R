"
  Name     : c5_17_ibm_beta.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

ret_f<-function(data){
   ddate<-as.Date(data[,1])
   n<-nrow(data)
   p<-data[,6]
   ret<-p[2:n]/p[1:(n-1)]-1
   final<-data.frame(ddate[2:n],ret,stringsAsFactors=F)
   colnames(final)<-c("DATE","RET")
   return(final)
}
#
x<-read.csv("http://canisius.edu/~yany/data/ibmMonthly.csv")
stock<-ret_f(x)
#
y<-read.csv("http://canisius.edu/~yany/data/^gspcMonthly.csv")
mkt<-ref_f(y)
colnames(mkt)<-c("DATE","MKTRET")
#
final<-merge(stock,mkt)
