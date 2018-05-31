###
  Name     : c5_31_CAPM.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/30/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

Note #1: go to http://finance.yahoo.com to dowload the last 5-year monthly
          data for IBM and S&P500. The ticker for S&P500 is ^GSPC
      #2: delete the first observation which contains 'null'
      #3: check if the last line is a blank line. If it is, delete it. 
###

using DataFrames, CSV
using GLM, StatsModels
#
function f(x)
  p=x[Symbol("Adj Close")]
  n=length(p)
  a=p[2:n]./p[1:(n-1)]-1.0
  return convert(Array{Float64,1}, a)
end
#
x = CSV.read("c:/temp/ibmMonthly5years.txt")
stockRet=f(x)
y = CSV.read("c:/temp/sp500Monthly5years.txt")
mktRet=f(y)
n3=min(length(stockRet),length(mktRet))
data = DataFrame(X=mktRet[1:n3], Y=stockRet[1:n3])
OLS = glm(@formula(Y ~ X), data, Normal(), IdentityLink())


