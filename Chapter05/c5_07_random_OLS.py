"""
  Name     : c5_07_random_OLS.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

from scipy import stats 
import scipy as sp
sp.random.seed(31233)
alpha=2.0
beta=3.8
n=1000
x=sp.arange(n)
y=alpha+beta*x+sp.random.rand(n)
(beta, alpha, r_value, p_value, std_err) = stats.linregress(y,x) 
print("Alpha , Beta")
print(alpha,beta) 
print("R-squared=", r_value**2)
print("p-value =", p_value)
