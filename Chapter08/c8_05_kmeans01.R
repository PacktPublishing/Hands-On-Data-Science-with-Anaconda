"
  Name     : c8_05_kMeans01.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(readr) 
library(corrplot)
library(ggplot2)
#
path<-"http://canisius.edu/~yany/RData/wine.RData"
load(url(path))
red2<-red
red2$quality<-NULL
white2<-white
white2$quality<-NULL
red_cor<-cor(red2)
white_cor<-cor(white2)
class(red_cor)
class(white_cor)
#
corrplot(red_cor,method="number")

corrplot(white_cor,method="number")



#https://www.kaggle.com/maitree/kmeans-unsupervised-learning-using-wine-dataset/notebook


