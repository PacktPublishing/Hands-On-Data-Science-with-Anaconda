"""
  Name     : c5_25_get_critical_value_F_test.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import scipy as sp
alpha=0.10
d1=1
d2=1
critical=sp.stats.f.ppf(q=1-alpha, dfn=d1, dfd=d2)
prob=sp.stats.f.cdf(critical, dfn=d1, dfd=d2)
print("alpha, d1, d2,  critical value, prob")
print(alpha, d1, d2,  critical, prob)




