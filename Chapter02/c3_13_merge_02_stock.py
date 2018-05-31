
"""
  Name     : c3_13_merge_02_stock.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import pandas as pd
import scipy as sp
x= pd.DataFrame({'YEAR': [2010,2011, 2012, 2013],
                 'FirmA': [0.2, -0.3, 0.13, -0.2],
                 'FirmB': [0.1, 0, 0.05, 0.23]})
y = pd.DataFrame({'YEAR': [2011,2013,2014, 2015],
                 'FirmC': [0.12, 0.23, 0.11, -0.1],
                 'SP500': [0.1,0.17, -0.05, 0.13]})
#
print("\n  inner  merge ")
print(pd.merge(x,y, on='YEAR'))
print(" \n  outer merge  ")
print(pd.merge(x,y, on='YEAR',how='outer'))
print("\n  left  merge  ")
print(pd.merge(x,y, on='YEAR',how='left'))
print("\n  right  merge ")
print(pd.merge(x,y, on='YEAR',how='right'))
