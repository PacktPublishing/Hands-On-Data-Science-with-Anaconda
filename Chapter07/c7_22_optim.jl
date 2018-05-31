###
  Name     : c7_22_optim.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###



using Optim
function g!(s, x)
 s[1] = -2.0*(1.0-x[1])-400.0*(x[2]-x[1]^2)*x[1]
 s[2] = 200.0*(x[2]-x[1]^2)
end
lower = [1.25, -2.1]
upper = [Inf, Inf]
initial_x = [2.0, 2.0]
od = OnceDifferentiable(f, g!, initial_x)
results = optimize(od, initial_x,lower,upper,Fminbox{GradientDescent}())