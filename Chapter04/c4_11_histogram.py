"
  Name     : c4_11_histogram.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

import numpy as np
import matplotlib.pyplot as plt
data = np.random.RandomState(10) 
n=5000
n2=1000
x=data.normal(size=n)
y=data.normal(loc=5, scale=2,size=n2)
a=(x,y)
b = np.hstack(a)
plt.hist(b, bins='auto') 
plt.title("Histogram with 'auto bins'")
plt.show()

