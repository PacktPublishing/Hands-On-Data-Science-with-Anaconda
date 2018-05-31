"""
  Name     : c5_09_annual_beta.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

Objective: using Quandl to replace Yahoo!Finance
           since Yahoo has changed its data structure

 Book title: Python for Finance (2nd edition)
 Author    : Yuxing Yan
 Page #    : 192 
 Date      : 1/23/2018  by Yuxing Yan

 Output of this program 
  year,     alpha,   beta, R_value,  P_value
(u'1962', 0.00012479, 0.411, 0.815, 6.1554743380330469e-61)
(u'1963', 0.00033024, 0.342, 0.616, 1.3611738963159366e-27)
"""
import numpy as np
import scipy as sp
import pandas as pd
import quandl as qd
from scipy import stats
#
ticker="wmt"
x=qd.get("WIKI/"+ticker)
p=x[['Adj. Close']]
ret=p.diff()/p.shift(1)
stockRet=ret.dropna()
stockRet.columns=['stockRet']
#
inFile="http://canisius.edu/~yany/data/^gspcDaily.csv"
y=pd.read_csv(inFile,index_col=0)
d=y[['Adj Close']]
ret2=d.diff()/d.shift(1)
mktRet=ret2.dropna()
mktRet.columns=['mktRet']

final= stockRet.merge(mktRet, how='inner', left_index=True, right_index=True)
years=pd.unique(final.index.strftime("%Y"))


print("    year,     alpha,   beta,R_value, P_value")
for i in sp.arange(0,5):
#for i in sp.arange(1,len(years)):
    #print(years[i])
    d=final[final.index.strftime("%Y")==years[i]]
    (beta,alpha,r_value,p_value,std_err)=stats.linregress(d.stockRet,d.mktRet)
    alpha=round(alpha,8)
    beta=round(beta,3)
    r_value=round(r_value,3)
    p_vaue=round(p_value,3)
    print(years[i],alpha,beta,r_value,p_value)
  