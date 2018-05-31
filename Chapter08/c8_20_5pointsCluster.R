"
  Name     : c8_20_5pointsCluter.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(cluster)
data <- rbind(c(180,20), c(160,5), c(60, 150), c(160,60), c(80,120))
output<-clara(data,2)
output$clustering
#output$clusinfo
output$medoids




