"
  Name     : c8_03_cluster_animals.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(cluster)
data(animals)
dim(animals)
head(animals)
colnames(animals)
apply(animals,2, table) # simple overview





ma <- mona(animals)
ma
plot(ma)


