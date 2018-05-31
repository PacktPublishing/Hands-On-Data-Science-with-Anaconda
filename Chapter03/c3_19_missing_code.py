"""
  Name     : c3_19_missing_code2.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/16/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import scipy as sp
import pandas as pd
path="https://canisius.edu/~yany/data/"
dataSet="z.csv"
infile=path+dataSet
x=pd.read_csv(infile,header=None)
print(x.head())
print((x[[1,1,2,3,4,5]] ==0).sum())


x2=x
x2[[1,2,3,4,5]] = x2[[1,2,3,4,5]].replace(0, sp.NaN)
print(x2.head())
#print((x2== sp.NaN).sum())

x3=x2
x3.fillna(x3.mean(), inplace=True)
print(x3.head())

# print(x.describe())

