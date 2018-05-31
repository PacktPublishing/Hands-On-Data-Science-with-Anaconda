"""
  Name     : c11_01_qt_consol.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/8/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import numpy as np
from scipy.special import jn
import matplotlib.pyplot as plt
from matplotlib.pyplot import plot
#
x=np.linspace(0,3*np.pi)
for i in range(6):
    plot(x,jn(i,x))
#
plt.show()
