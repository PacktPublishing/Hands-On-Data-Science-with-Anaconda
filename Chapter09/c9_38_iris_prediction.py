
"""
  Name     : c9_38_iris_prediction.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

from sklearn import metrics
from sklearn import datasets
from sklearn.tree import DecisionTreeClassifier
x=datasets.load_iris()
model=DecisionTreeClassifier()
model.fit(x.data, x.target)
print(model)
true=x.target
predicted=model.predict(x.data)
print(metrics.classification_report(true, predicted))
print(metrics.confusion_matrix(true, predicted))