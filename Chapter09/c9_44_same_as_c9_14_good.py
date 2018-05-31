
# coding: utf-8

# In[15]:


import numpy as np
from sklearn import datasets
from sklearn.neighbors import KNeighborsClassifier as KNC
iris = datasets.load_iris()
x= iris.data
y= iris.target
np.unique(y)
np.random.seed(123)
indices = np.random.permutation(len(x))
iris_x_train = x[indices[:-10]]
iris_y_train = y[indices[:-10]]
iris_x_test = x[indices[-10:]]
iris_y_test = y[indices[-10:]]
knn = KNC()
knn.fit(iris_x_train, iris_y_train)
KNC(algorithm='auto',leaf_size=30, metric='minkowski',
metric_params=None,n_jobs=1,n_neighbors=5, p=2,weights='uniform')
knn.predict(iris_x_test)
out=knn.predict(iris_x_test)
print("predicted:",out)
print("True :",iris_y_test)

