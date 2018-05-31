"
  Name     : c4_27_3stock_connection.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(qgraph)
stocks<-c("IBM","MSFT","WMT")
x<-rep(stocks, each = 3)
y<-rep(stocks, 3)
correlation<-c(0,10,3,10,0,3,3,3,0)
data <- as.matrix(data.frame(from =x , to =y, width =correlation))
qgraph(data, mode = "direct", edge.color = rainbow(9))