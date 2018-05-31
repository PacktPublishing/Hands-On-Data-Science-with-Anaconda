"""
  Name     : c3_17_missing_code.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

x={1,2,3,sp.nan,6,sp.nan}
print(x)
x.remove(sp.nan)
print(x)