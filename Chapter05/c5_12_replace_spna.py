"""
  Name     : c5_12_replace_spna.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import scipy as sp
x=[2,3,sp.nan,sp.nan,4]
y=x
x.remove(sp.nan)
m=sp.mean(x)



