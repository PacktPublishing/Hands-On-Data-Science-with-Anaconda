
"
  Name     : c8_00_randomUniformForest.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(randomUniformForest)
data(iris)
x<-randomUniformForest(Species ~ ., data = iris, threads = 1, ntree = 20, BreimanBounds = FALSE) 
# get the 10th tree
OneTree <- getTree.randomUniformForest(x, 10)

