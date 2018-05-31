"""
  Name     : c3_25_sort_python.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import pandas as pd
a = pd.DataFrame([[8,3],[8,2],[1,-1]],columns=['X','Y'])
print(a)
# sort by A ascedning, then B descending
b= a.sort_values(['X', 'Y'], ascending=[1, 0])
print(b)
# sort by A and B, both ascedning
c= a.sort_values(['X', 'Y'], ascending=[1, 1])
print(c)