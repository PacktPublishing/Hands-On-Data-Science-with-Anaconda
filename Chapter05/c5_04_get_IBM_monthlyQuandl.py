"""
  Name     : c5_04_getIBM_monthlyQuandl.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

Objective: Get monthly IMB's data from Quandl platform
input    : ticker

The first  and last 2 lines are shown below. 
////////////////////////////////////////////////////
 Open   High    Low  Close   Volume  Ex-Dividend  Split Ratio  \
Date                                                                        
1962-01-31  530.5  542.0  530.5  542.0  38000.0          0.0          1.0   
1962-02-28  536.0  537.0  533.0  537.0  13360.0          0.0          1.0   

            Adj. Open  Adj. High   Adj. Low  Adj. Close  Adj. Volume  
Date                                                                  
1962-01-31  14.003769  14.307338  14.003769   14.307338     760000.0  
1962-02-28  14.148954  14.175351  14.069762   14.175351     267200.0  
              Open    High      Low   Close     Volume  Ex-Dividend  \
Date                                                                  
2017-12-31  154.17  154.72  153.415  153.42  3310894.0          0.0   
2018-01-31  164.02  164.74  163.030  163.14  5007254.0          0.0   

            Split Ratio  Adj. Open  Adj. High  Adj. Low  Adj. Close  \
Date                                                                  
2017-12-31          1.0     154.17     154.72   153.415      153.42   
2018-01-31          1.0     164.02     164.74   163.030      163.14   

            Adj. Volume  
Date                     
2017-12-31    3310894.0  
2018-01-31    5007254.0  
"""

import quandl as qd
x=qd.get("WIKI/ibm",collapse='monthly')
print(x.head(2))
print(x.tail(2))


 

