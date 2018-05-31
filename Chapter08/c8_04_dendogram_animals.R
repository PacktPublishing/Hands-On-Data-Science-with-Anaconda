"
  Name     : c8_04_dendogram_animals.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"
require(cluster)
data(animals)
x<-agnes(animals)
pltree(x)



