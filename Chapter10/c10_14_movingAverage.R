"
  Name     : c10_14_movingAverage.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

movingAverageFunction<- function(data,n=10){
  out= data
  for(i in n:length(data)){
    out[i] = mean(data[(i-n+1):i])
  }
  return(out)
}

library(timeSeries)
data(MSFT)
p<-MSFT$Close
#
ma<-movingAverageFunction(p,3)
head(p)
head(ma)
