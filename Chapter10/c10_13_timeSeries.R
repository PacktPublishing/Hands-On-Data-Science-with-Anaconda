"
  Name     : c10_13_timeSeries.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(timeSeries)
data(MSFT)
x <- MSFT
by <- timeSequence(from = start(x),  to = end(x), by = "week")
y<-aggregate(x,by,mean)
head(x)
head(y)


