###
  Name     : c10_30_QuantEcon_simulated.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###


using QuantEcon
P = [0.4 0.6; 0.2 0.8];
mc = MarkovChain(P)
x = simulate(mc, 100000);
mean(x .== 1) 
#
mc2 = MarkovChain(P, ["employed", "unemployed"])
simulate(mc2, 4)





