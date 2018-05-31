"
  Name     : c5_20_ff4_RData.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

con<-url("http://canisius.edu/~yany/RData/ffc4monthly.RData")
load(con)
head(.ffc4monthly)
