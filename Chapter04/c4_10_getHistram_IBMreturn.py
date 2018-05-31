"
  Name     : c4_10_getHistram_IBMreturn.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

import numpy as np
import quandl as qd
import matplotlib.pyplot as plt
#
x=qd.get("WIKI/ibm")
p=x[['Adj. Close']]
ret=p.diff()/p
ret2=ret.dropna()
np.histogram(ret2,bins='auto')
plt.show()


[n,bins,patches]=np.histogram(ret,100)
mu=np.mean(ret)
sigma=np.std(ret)
x=mlt.mlab.normpdf(binds,mu,sigma)
mlt.plot(bins,x,color="red",lw=2)
mlt.show()