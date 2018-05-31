"
  Name     : c4_16_plot_julia.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

# Pkg.add("Plots")

using Plots
srand(123)
plot(rand(5,5),linewidth=2,title="Simple plot")


using PyPlot
x = linspace(0,2*pi,1000)
y = sin(2*x + 3*cos(1.5*x));
plot(x, y, color="green", linewidth=2.0, linestyle="--")

