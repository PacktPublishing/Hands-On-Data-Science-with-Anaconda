"
  Name     : c4_16_plot_julia.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

plot(rand(5,5),color="grep",linewidth=2,title="Simple plot")
#plot(rand(5,5),color="grep",linewidth=2,title=name)
"

# Pkg.add("Plots")

using Plots
srand(123)
name="Simple plot"
plot(rand(5,5),color="gray",linewidth=2,title=name)



