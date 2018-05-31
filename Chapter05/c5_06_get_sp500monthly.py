"""
  Name     : c5_06_get_sp500monthly.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

Objective: Get monthly S&P500 (^GSPC) data from Yan's webpage 

    Date       Open   High    Low      Close  Adj Close    Volume
0  1950-01-01  16.660000  17.09  16.65  17.049999  17.049999  42570000
1  1950-02-01  17.049999  17.35  16.99  17.219999  17.219999  33430000
           Date         Open         High          Low        Close  \
815  2017-12-01  2645.100098  2694.969971  2605.520020  2673.610107   
816  2018-01-01  2683.729980  2787.850098  2682.360107  2786.239990   
817  2018-01-12  2770.179932  2787.850098  2769.639893  2786.239990   

       Adj Close       Volume  
815  2673.610107  65251190000  
816  2786.239990  27862080000  
817  2786.239990   2129410147
"""
import pandas as pd

inFile="http://canisius.edu/~yany/data/^gspcMonthly.csv"
d=pd.read_csv(inFile)
print(d.head(2))
print(d.tail(3))






 

