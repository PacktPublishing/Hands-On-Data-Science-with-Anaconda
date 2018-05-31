"
  Name     : c12_04_parallel.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/14/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

require(parallel) 
nCores <- 8  # manually for non-cluster machines
cl <- makeCluster(nCores) # by default this uses the PSOCK mechanism

