
"
  Name     : c9_22_reinforcementLearning_state_same_as_next.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

x<-subset(data,data$State==data$NextState)
head(x)
unique(x$Reward)

