"""
  Name     : c8_28_iris_kMean_sklearn.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


from sklearn import cluster
from sklearn import datasets
x=datasets.load_iris()
iris = datasets.load_iris()
x = iris.data
k_means = cluster.KMeans(n_clusters=3)
k_means.fit(x) 
print(k_means.labels_[::10])