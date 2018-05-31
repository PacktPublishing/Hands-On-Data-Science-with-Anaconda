"
  Name     : c10_05_simData.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/23/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(eclust)
data("simdata")
dim(simdata)
simdata[1:5, 1:6]
table(simdata[,"E"])

