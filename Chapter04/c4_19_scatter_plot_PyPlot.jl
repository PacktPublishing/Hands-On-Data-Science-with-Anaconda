"
  Name     : c4_19_scatter_plot_PyPlot.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"
using PyPlot
n=50
x = 100*rand(n)
y = 100*rand(n)
areas = 800*rand(n)
fig = figure("pyplot_scatterplot",figsize=(10,10))
ax = axes()
scatter(x,y,s=areas,alpha=0.5)
title("Scatter Plot")
xlabel("X")
ylabel("Y")
grid("on")