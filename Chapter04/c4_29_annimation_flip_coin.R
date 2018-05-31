"
  Name     : c4_29_annimation_flip_coin.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"
library(animation)
myProb<-c(0.45,0.1, 0.45)
oopt = ani.options(interval=0.2,nmax = ifelse(interactive(), 100, 2))
flip.coin(bg = "yellow")



# 