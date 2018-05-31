###
  Name     : c8_24_01.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###


using Base.Test
using ClusterAnalysis

lbls = vec([1 1 1 2 2 2])
expected = vec([2 2 2 3 3 3])

@test 1.0 == ClusterAnalysis.adjusted_rand_index(lbls, expected)

lbls = vec([1 1 1 2 2 2])
expected = vec([1 2 1 1 2 1])
