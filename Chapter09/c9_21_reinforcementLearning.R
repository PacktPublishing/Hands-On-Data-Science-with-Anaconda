
"
  Name     : c9_21_reinforcementLearning.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library("ReinforcementLearning")
set.seed(123)
data <- sampleGridSequence(1000)
dim(data)
head(data)
unique(data$State)
unique(data$Action)
unique(data$NextState)
unique(data$Reward)






