"""
  Name     : c3_28_merge_different_names.py
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
                 'IBM': [0.2, -0.3, 0.13, -0.2],
                 'WMT': [0.1, 0, 0.05, 0.23]})
y = pd.DataFrame({'date': [2011,2013,2014, 2015],
                 'C': [0.12, 0.23, 0.11, -0.1],
                 'SP500': [0.1,0.17, -0.05, 0.13]})
print(pd.merge(x,y, left_on='YEAR',right_on='date'))




