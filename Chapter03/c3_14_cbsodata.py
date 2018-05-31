"""
  Name     : c3_14_cbsodata.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import pandas as pd
import cbsodata as cb
name='82070ENG'
data = pd.DataFrame(cb.get_data(name))
print(data.head())
info=cb.get_info(name)
print(info['Title'])

