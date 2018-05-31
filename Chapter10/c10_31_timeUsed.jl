###
  Name     : c10_31_timeUsed.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###


using QuantEcon
nodes, weights = qnwlege(65, -2pi, 2pi);
integral = do_quad(x -> cos(x), nodes, weights)
@time quadgk(x -> cos.(x), -2pi, 2pi)
@time do_quad(x -> cos.(x), nodes, weights)





