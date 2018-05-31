"""
  Name     : c5_05_get_sp500daily.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

Objective: Get daily ^GSPC data from Yan's webpage 

Date   Open   High    Low  Close  Adj Close   Volume
0  1950-01-03  16.66  16.66  16.66  16.66      16.66  1260000
1  1950-01-04  16.85  16.85  16.85  16.85      16.85  1890000
             Date         Open         High          Low        Close  \
17117  2018-01-11  2752.969971  2767.560059  2752.780029  2767.560059   
17118  2018-01-12  2770.179932  2787.850098  2769.639893  2786.239990   

         Adj Close      Volume  
17117  2767.560059  3641320000  
17118  2786.239990  3573970000  

"""
import pandas as pd

inFile="http://canisius.edu/~yany/data/^gspcDaily.csv"
d=pd.read_csv(inFile)
print(d.head(2))
print(d.tail(2))






 

