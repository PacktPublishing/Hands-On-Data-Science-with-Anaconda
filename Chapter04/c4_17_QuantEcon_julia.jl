"
  Name     : c4_17_QuantEco_julia.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

            https://lectures.quantecon.org/jl/julia_plots.html
"

using QuantEcon: meshgrid
using PyPlot:surf
using Plots
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
surf(xgrid, ygrid, z',alpha=0.7)