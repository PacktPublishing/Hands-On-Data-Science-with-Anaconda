"
  Name     : c4_15_add_Greek_letters.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

set.seed(12345) 
mu=4
std=2
nRandom=2000
x <- rnorm(mean =mu, sd =std, n =nRandom)
name<- "Normal Probability Density Function"
curve(dnorm, from = -3, to = 3, n = 1000, main = name)
formula<-expression(f(x) ==paste(frac(1, sqrt(2 * pi * sigma^2))," ",e^{frac(-(x - mu)^2, 2 * sigma^2)}))
text(2, 0.3, formula, cex = 1.3)




