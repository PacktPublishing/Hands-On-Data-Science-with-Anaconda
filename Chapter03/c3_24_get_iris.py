"""
  Name     : c3_24_get_iris.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import pandas as pd
path="http://archive.ics.uci.edu/ml/machine-learning-databases/"
dataset="iris/bezdekIris.data"
inFile=path+dataset
data=pd.read_csv(inFile,header=None)
data.columns=["sepalLength","sepalWidth","petalLength","petalWidth","Class"]
print(data.head(2))