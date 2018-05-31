###
  Name     : c8_25_cluster.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###



using Clustering
srand(12345)
d = 10
n = 500
x = rand(d, n)
S = -pairwise(Euclidean(), x, x)
# set diagonal value to median value
S = S - diagm(diag(S)) + median(S)*eye(size(S,1)) 
R = affinityprop(S)


