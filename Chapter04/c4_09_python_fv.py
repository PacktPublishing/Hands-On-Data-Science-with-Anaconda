"
  Name     : c4_09_python_fv.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

import numpy as np
import matplotlib.pyplot as mlt 
n=np.linspace(0,10,10)
pv=100
R=0.1
fv=pv*(1+R)**n
mlt.plot(n,fv)
mlt.show()