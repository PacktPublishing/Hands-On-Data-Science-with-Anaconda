"""
  Name     : c9_06_print_iris.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import numpy as np
from sklearn import datasets
iris = datasets.load_iris()
print("Data\n",iris.data[0:4,])
print("target\n",iris.target[0:4])


