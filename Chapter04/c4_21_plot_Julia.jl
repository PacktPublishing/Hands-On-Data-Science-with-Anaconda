
"
  Name     : c4_21_plot_julia.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


using PyPlot
x = linspace(0, 10, 200)
y = sin.(x)
name=L"$y = \sin(x)$" 
fig, ax = subplots()
ax[:plot](x, y, "r-", linewidth=2, label=name,alpha=0.6)
ax[:legend](loc="upper center")


