
"
  Name     : c3_22_sort_by2variables.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

 x<-c(1,3,1, 0.1,0.3,-0.4,100,300,30)
 y<-data.frame(matrix(x,3,3))
 colnames(y)<-c("ID","RET","Data1")

 y

 z<-y[order(y$ID,y$RET),]



 z2<-y[order(y$ID,decreasing = TRUE,y$RET),]
z




decreasing = FALSE
