
"""
  Name     : c9_20_unique_value_iris.py
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
mylist=list(iris.target)
used = []
unique = [x for x in mylist if x not in used and used.append(x)]
print(used)

