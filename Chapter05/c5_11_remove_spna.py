"""
  Name     : c5_11_remove_spna.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import scipy as sp
x={2,4,3,sp.nan,6,sp.nan,7}
print(x)
x.remove(sp.nan)
print(x)


