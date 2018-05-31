"""
  Name     : c8_08_python_hierachical.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import numpy as np
import scipy.cluster.hierarchy as hac
import matplotlib.pyplot as plt
#
n=100
x=np.random.normal(0,8,n)
y=np.random.normal(10,8,n)
a = [x,y]
z = hac.linkage(a, method='single')
plt.