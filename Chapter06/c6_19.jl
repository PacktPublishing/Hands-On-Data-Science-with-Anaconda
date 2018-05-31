###
  Name     : c6_19.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###


Pkg.add("Gadfly")
using Gadfly
draw(SVG("output.svg", 6inch, 3inch), plot([sin, cos], 0, 25))


function module_functions(modname)
    list = Symbol[]
    for nm in names(modname)
        typeof(eval(nm)) == Function && push!(list,nm)
    end
    return list
end


using PyPlot
module_functions(PyPlot)


using MTH229  
f(x) = exp(-2*x^2)
plot(f, -3, 3) 			


using QuantEcon: meshgrid
n = 50
x = linspace(-3, 3, n)
y = x
z = Array{Float64}(n, n)
f(x, y) = cos(x^2 + y^2) / (1 + x^2 + y^2)
for i in 1:n
    for j in 1:n
        z[j, i] = f(x[i], y[j])
    end
end
xgrid, ygrid = meshgrid(x, y)
surf(xgrid, ygrid, z', cmap=ColorMap("jet"), alpha=0.7)
zlim(-0.5, 1.0)

