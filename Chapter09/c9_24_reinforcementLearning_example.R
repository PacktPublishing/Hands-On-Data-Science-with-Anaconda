
"
  Name     : c9_124_reinforcementLearning_example.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(ReinforcementLearning)
set.seed(123)
data <- sampleGridSequence(1000)
control <- list(alpha = 0.1, gamma = 0.1, epsilon = 0.1)
model <- ReinforcementLearning(data,s="State",a="Action",r="Reward",s_new="NextState",control=control)
print(model)


# Plotting learning curve
plot(model)

