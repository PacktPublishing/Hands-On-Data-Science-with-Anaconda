"
  Name     : c4_06_add_labels.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


import scipy as sp
import matplotlib.pyplot as plt 
#
x=sp.linspace(-2*sp.pi,2*sp.pi,200,endpoint=True)
y=sp.cos(x)
plt.plot(x,y)
plt.xlabel("x-value")
plt.ylabel("Cosine function")
plt.title("Cosine curve from -2pi to 2pi")
plt.show()

