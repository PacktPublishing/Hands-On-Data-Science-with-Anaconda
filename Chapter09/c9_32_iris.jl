###
  Name     : c9_32_iris.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###

using Gadfly
using RDatasets
using Clustering
iris = dataset("datasets", "iris")
head(iris)
features=permutedims(convert(Array, iris[:,1:4]),[2, 1])
result=kmeans(features,3)                          
nameX="PetalLength"
nameY="PetalWidth"
assignments=result.assignments  
plot(iris, x=nameX,y=nameY,color=assignments,Geom.point)




