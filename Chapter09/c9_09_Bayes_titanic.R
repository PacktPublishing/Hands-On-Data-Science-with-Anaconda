"
  Name     : c9_09_Bayes_titanic.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(e1071)
data(Titanic)
m <- naiveBayes(Survived ~ ., data = Titanic)
output<-predict(m, as.data.frame(Titanic))

#
print(m)
print(output)