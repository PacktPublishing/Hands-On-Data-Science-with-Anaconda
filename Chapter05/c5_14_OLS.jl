###
  Name     : c5_14_OLS.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###

 use GLM, DataFrames
 data = DataFrame(X=[1,2,3], Y=[2,4,7])
 OLS = glm(@formula(Y ~ X), data, Normal(), IdentityLink())


