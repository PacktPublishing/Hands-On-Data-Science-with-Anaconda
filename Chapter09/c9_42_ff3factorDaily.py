
"""
  Name     : c9_42_ff3factorDaily.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/16/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import  scipy as sp
import pandas as pd
import quandl as qd
import statsmodels.api as sm
#quandl.ApiConfig.api_key = 'YOUR_API_KEY'
a=qd.get("WIKI/IBM") 
p=a['Adj. Close']
n=len(p)
ret=[]
#
for i in range(n-1):
    ret.append(p[i+1]/p[i]-1)
#
c=pd.DataFrame(ret,a.index[1:n],columns=['RET'])
ff=pd.read_pickle('c:/temp/ffDaily.pkl')
final=pd.merge(c,ff,left_index=True,right_index=True)
y=final['RET']
x=final[['MKT_RF','SMB','HML']]
#x=final[['MKT_RF']]
x=sm.add_constant(x)
results=sm.OLS(y,x).fit()
print(results.summary())



