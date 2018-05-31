"""
  Name     : c7_07_optimization_01.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/1/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import numpy as np
from scipy.optimize import minimize
def rosen(x):
    """The Rosenbrock function"""
    return sum(100.0*(x[1:]-x[:-1]**2.0)**2.0 + (1-x[:-1])**2.0)
#
x0 = np.array([1.3, 0.7, 0.8, 1.9, 1.2])
solution= minimize(rosen, x0, method='nelder-mead',options={'xtol': 1e-8, 'disp': True})

print(solution.x)

