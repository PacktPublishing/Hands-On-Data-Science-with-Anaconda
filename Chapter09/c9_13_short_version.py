# http://scikit-learn.org/stable/auto_examples/classification/plot_digits_classification.html#sphx-glr-auto-examples-classification-plot-digits-classification-py

"""
  Name     : c9_13_short_version_iris.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import matplotlib.pyplot as plt
from sklearn import datasets, svm, metrics
from sklearn.metrics import classification_report as report
#
format1="Classification report for classifier %s:\n%s\n"
format2="Confusion matrix:\n%s"
digits = datasets.load_digits()
imageLabels = list(zip(digits.images, digits.target))
for index,(image,label) in enumerate(imageLabels[:4]):
    plt.subplot(2, 4, index + 1)
    plt.axis('off')
    plt.imshow(image,cmap=plt.cm.gray_r,interpolation='nearest')
    plt.title('Training: %i' % label)
n=len(digits.images)
data2 = digits.images.reshape((n,-1))
classifier = svm.SVC(gamma=0.001)
classifier.fit(data2[:n//2],digits.target[:n//2])
expected = digits.target[n//2:]
predicted = classifier.predict(data[n//2:])
print(format1 % (classifier,report(expected, predicted)))
print(format2 % metrics.confusion_matrix(expected, predicted))
imageAndPredictions=list(zip(digits.images[n//2:], predicted))
for index,(image,prediction) in enumerate(imageAndPredictions[:4]):
    plt.subplot(2,4,index+5)
    plt.axis('off')
    plt.imshow(image,cmap=plt.cm.gray_r,interpolation='nearest')
    plt.title('Prediction: %i' % prediction)
plt.show()

