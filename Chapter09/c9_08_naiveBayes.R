"
  Name     : c9_08_naiveBayes.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(mlbench)
data(HouseVotes84)
head(HouseVotes84)

library(e1071)
data(HouseVotes84, package = "mlbench")
model<-naiveBayes(Class ~ ., data = HouseVotes84)
#
predict(model, HouseVotes84[1:10,])
predict(model, HouseVotes84[1:10,], type = "raw")
pred <- predict(model, HouseVotes84)
table(pred, HouseVotes84$Class)
