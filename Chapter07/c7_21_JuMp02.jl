###
  Name     : c7_21_JuMP02.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###



using JuMP
using Gurobi
#master = Model()
#master = Model(solver = GLPKSolverLP(method=:Exact))
master = Model(solver =GurobiSolver())
@variable(master, x[1:2] >= 0)
w=[14 31 36 45]
A=[1 0; 1 0; 0 2; 1 0]
b=[211; 395; 610; 97]
@defConstrRef myCons[1:4]
for i=1:4
    myCons[i] = @addConstraint(master, dot(x, vec(A[i,:]))>=b[i])
end
@setObjective(master, Min, sum(x))
master
status=solve(master)
getValue(x)
println("\nOptimal Solution is:\n")s
println("width: ", w)
epsilon=1e-6
for i=1:size(A,2)
    if getValue(x[i])>epsilon 
        println("Cutting Pattern: ", A[:,i], ", Number of Paper Rolls Cut Using this Pattern: ", getValue(x[i]))
    end
end




# http://www.juliaopt.org/notebooks/Chiwei%20Yan%20-%20Cutting%20Stock.html