# https://stats.stackexchange.com/questions/21572/how-to-plot-decision-boundary-of-a-k-nearest-neighbor-classifier-from-elements-o/21602#21602

library(ElemStatLearn)
require(class)
x <- mixture.example$x
y <- mixture.example$y
xnew <- mixture.example$xnew
px1 <- mixture.example$px1
px2 <- mixture.example$px2
#
color1<-"blue"
color2<-"pink3"
kNearest<-5  
model<- knn(x, xnew,y,k=kNearest,prob=TRUE)
title<-paste(kNearest,"-nearest neighbour")
prob <- attr(model,"prob")
prob <- ifelse(model=="1",prob,1-prob)
prob15 <- matrix(prob,length(px1),length(px2))
par(mar=rep(2,4))
contour(px1,px2,prob15,levels=0.5,main=title,axes=FALSE)
points(x, col=ifelse(g==1,color1,color2))
gd <- expand.grid(x=px1, y=px2)
points(gd,pch=".",cex=1.5,col=ifelse(prob15>0.5,color1,color2))
box()




