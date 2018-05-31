"""
  Name     : c3_31_merge_by2variables.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import pandas as pd
x= pd.DataFrame({'ID': ['IBM', 'IBM', 'WMT', 'WMT'],
                 'date': [2010, 2011, 2010, 2011],
                  'SharesOut': [100, 40, 60, 90],
                  'Asset': [20, 30, 10, 30]})

y = pd.DataFrame({'ID': ['IBM', 'IBM', 'C', 'WMT'],
                  'date': [2010, 2014, 2010, 2010],
                    'Ret': [0.1, 0.2, -0.1,0.2],
                    'ROA': [0.04,-0.02,0.03,0.1]})

z= pd.merge(x,y, on=['ID', 'date'])