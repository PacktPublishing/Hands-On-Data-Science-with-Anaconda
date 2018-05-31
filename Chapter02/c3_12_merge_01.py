"""
  Name     : c3_12_merge_01.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import scipy as sp
import pandas as pd

x= pd.DataFrame({'key': ["ID1","ID2", "ID3", "ID4"],
                 'x': [0.1, 0.02 0.05, 0.02],
                 'y': [0, 1, 2, 3]})
y = pd.DataFrame({'key': ['ID1', 'ID2', 'ID5', 'ID7'],
                  'z': [11, 12, 22, 23],
                  'd': [23, 15',2, 3]})
print(sp.shape(x))
print(sp.shape(y))
result = pd.merge(x,y, on='key')
print(result)
result2=pd.merge(x,y)
print(result2)



