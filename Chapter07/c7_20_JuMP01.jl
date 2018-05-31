###
  Name     : c7_20_JuMP01.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###


using JuMP
using ECOS
m= Model(solver =ECOSSolver())
@variable(m, 0 <= x <= 2 )
@variable(m, 0 <= y <= 30 )
@setObjective(m, Max, 5x + 3*y )
@addConstraint(m, 1x + 5y <= 3.0 )
print(m)
status = solve(m)
println("Objective value: ", getObjectiveValue(m))
println("x = ", getValue(x))
println("y = ", getValue(y))


#https://jump.readthedocs.io/en/release-0.2/jump.html