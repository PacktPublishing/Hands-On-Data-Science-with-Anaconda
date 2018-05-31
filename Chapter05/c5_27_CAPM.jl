###
  Name     : c5_27_CAPM.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/30/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

 Note #1: go to http://finance.yahoo.com to dowload the last 5-year monthly
          data for IBM and S&P500. The ticker for S&P500 is ^GSPC
      #2: delete the first observation which contains 'null'
      #3: since readtable is deprecated, see c5_31_CAPM.jl which 
          uses the CSV.read() function
###


using DataFrames;
using GLM, StatsModels
#
x = readtable("c:/temp/ibmMonthly5years.csv")
p=x[:Adj_Close]
n=length(p)
stockRet=p[2:n]./p[1:(n-1)]-1
#
y = readtable("c:/temp/sp500Monthly5years.csv")
p2=y[:Adj_Close]
n2=length(p2)
mktRet=p2[2:n2]./p2[1:(n2-1)]-1
#
n3=min(length(stockRet),length(mktRet))
data = DataFrame(X=mktRet[1:n3], Y=stockRet[1:n3])
OLS = glm(@formula(Y ~ X), data, Normal(), IdentityLink())