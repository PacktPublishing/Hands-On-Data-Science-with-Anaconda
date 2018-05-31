"""
  Name     : c5_15_getIBM_dailyFromQuandl.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import quandl as qd
x=qd.get("WIKI/ibm")
print(x.head(2))
print(x.tail(2))
