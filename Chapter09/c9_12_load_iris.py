"""
  Name     : c9_12_load_iris.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import sklearn as sk
from sklearn import datasets
iris = datasets.load_iris()
print("data:\n",iris.data[0:4,])
print("target",iris.target[0:2,])
mylist=list(iris.target)
used = []
unique = [x for x in mylist if x not in used and used.append(x)]
print("unique values for targets\n",used)



