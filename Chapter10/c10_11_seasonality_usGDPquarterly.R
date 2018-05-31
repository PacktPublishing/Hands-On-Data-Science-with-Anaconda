"
  Name     : c10_11_seasonality_usGDPqiarterly.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"
library(astsa)
path<-"http://canisius.edu/~yany/RData/"
dataSet<-"usGDPquarterly"
con<-paste(path,dataSet,".RData",sep='')
load(url(con))
x<-.usGDPquarterly$DATE
y<-.usGDPquarterly$GDP_CURRENT
plot(x,y)
diff4 = diff(y,4)
acf2(diff4,24)




