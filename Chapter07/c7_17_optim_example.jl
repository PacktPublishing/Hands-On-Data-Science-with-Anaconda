###
  Name     : c7_17_optim_example.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###




using Optim
f(x) = (1.0 - x[1])^2 + 200.0 * (x[2] - x[1]^2)^2
optimize(f, [0.0, 0.0])
