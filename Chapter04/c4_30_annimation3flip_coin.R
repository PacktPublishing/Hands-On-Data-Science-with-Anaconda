"
  Name     : c4_30_annimation_flipCoin2.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(animation)
myProb<-c(0.45,0.1, 0.45)
names<- c("Head", "Stand", "Tail")
oopt = ani.options(interval=0.2,nmax = ifelse(interactive(), 100, 2))
flip.coin(faces =names,type="n",prob = myProb, col = c(1, 2, 4))


