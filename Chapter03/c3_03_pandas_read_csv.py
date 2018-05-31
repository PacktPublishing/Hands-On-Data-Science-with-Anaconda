"""
  Name     : c3_03_pandas_read_csv.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

inFile="http://canisius.edu/~yany/data/bezdekIris.data.txt"
import pandas as pd
d=pd.read_csv(inFile,header=None)
