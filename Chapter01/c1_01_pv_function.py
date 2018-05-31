# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 15:42:25 2017

@author: yany
"""
def pv_f(pv,r,n):
    return pv/(1+r)**n
#
pv=pv_f(100,0.1,2)
print(pv)

