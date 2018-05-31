"""
  Name     : c5_29_repace_na_with_mean.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import scipy as sp
import pandas as pd
df = pd.DataFrame({'A' : [2,sp.nan,3,4]})
print(df)
df.fillna(df.mean(), inplace=True)
print(df)


