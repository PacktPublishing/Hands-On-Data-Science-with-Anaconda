"
  Name     : c4_32_coin_grey.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(animation)
myProb<-c(0.5,0.5)
ani.options(interval=0.2,nmax = ifelse(interactive(), 100, 2))
flip.coin(bg = "grey",col=c("black","grey"))

