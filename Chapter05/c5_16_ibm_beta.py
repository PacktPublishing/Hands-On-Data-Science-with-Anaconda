"""
  Name     : c5_16_ibm_beta.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import quandl as qd
import pandas as pd
from scipy import stats
x=qd.get("WIKI/ibm",collapse='monthly')
#
p=x[['Adj. Close']]
ret=p.diff()/p.shift(1)
stockRet=ret.dropna()
stockRet.columns=['stockRet']
#stockRet.assign(yyyymm=stockRet.index.strftime("%Y%m"))
#
inFile="http://canisius.edu/~yany/data/sp500monthlyEndOfMonthDate.csv"
y=pd.read_csv(inFile,index_col=0)
d=y[['Adj.Close']]
ret2=d.diff()/d.shift(1)
mktRet=ret2.dropna()
mktRet.columns=['mktRet']
df= stockRet.merge(mktRet, how='inner', left_index=True, right_index=True)
(beta,alpha,r_value,p_value,std_err)=stats.linregress(df.stockRet,df.mktRet)
alpha=round(alpha,8)
beta=round(beta,3)
r_value=round(r_value,3)
p_vaue=round(p_value,3)
print("alpha, beta, R2 and P-value")
print(alpha,beta,r_value,p_value)
