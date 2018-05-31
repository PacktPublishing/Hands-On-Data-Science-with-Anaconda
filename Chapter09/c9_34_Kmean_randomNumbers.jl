###
  Name     : c9_34_Kmean_randomNumbers.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###

using Clustering
srand(1234)
nRow=5
nCol=1000
x = rand(nRow,nCol)
maxInter=200  #max interation 
nCluster=20
R = kmeans(x,nCluster;maxiter=maxInter,display=:iter)
@assert nclusters(R) ==nCluster
c = counts(R)
clusters= R.centers





