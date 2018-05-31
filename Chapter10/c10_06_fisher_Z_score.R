"
  Name     : c10_05_fisher_z_score.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(eclust)
data("simdata")
X = simdata[,c(-1,-2)]
firstCorr<-cor(X[1:50,])
secondCorr<-cor(X[51:100,])
score<-u_fisherZ(n0=100,cor0=firstCorr,n1=100,cor1=secondCorr)
dim(score)
score[1:5,1:5]
