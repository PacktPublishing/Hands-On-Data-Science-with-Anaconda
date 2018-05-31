"
  Name     : c8_10_wine_quality.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(randomUniformForest)
data(wineQualityRed)
x = wineQualityRed[, -ncol(wineQualityRed)]
# run unsupervised analysis on the first half of dataset 
data1 = 1:floor(nrow(x)/2)
shortFunction<-unsupervised.randomUniformForest
model1 =shortFunction(x,subset =data1,depth = 5) 
plot(model1)







