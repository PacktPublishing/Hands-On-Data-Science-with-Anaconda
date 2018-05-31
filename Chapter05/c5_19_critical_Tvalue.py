"""
  Name     : c5_19_critical_Tvalue.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

from scipy import stats
alpha=0.05
print(stats.t.ppf(1-alpha/2, 100))
