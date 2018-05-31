"""
  Name     : c5_03_getIBM_dailyQuandl.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com


Objective: Get daily IMB's data from Quandl 
input    : ticker

The first and last two lines are shown below. 
////////////////////////////////////////////////////
          Open   High    Low  Close   Volume  Ex-Dividend  Split Ratio  \
Date                                                                        
1962-01-02  578.5  578.5  572.0  572.0  19360.0          0.0          1.0   
1962-01-03  572.0  577.0  572.0  577.0  14400.0          0.0          1.0   

            Adj. Open  Adj. High   Adj. Low  Adj. Close  Adj. Volume  
Date                                                                  
1962-01-02  15.270839  15.270839  15.099257   15.099257     387200.0  
1962-01-03  15.099257  15.231243  15.099257   15.231243     288000.0  
              Open    High     Low   Close     Volume  Ex-Dividend  \
Date                                                                 
2018-01-11  164.80  164.94  163.30  164.20  3783614.0          0.0   
2018-01-12  164.02  164.74  163.03  163.14  5007254.0          0.0   

            Split Ratio  Adj. Open  Adj. High  Adj. Low  Adj. Close  \
Date                                                                  
2018-01-11          1.0     164.80     164.94    163.30      164.20   
2018-01-12          1.0     164.02     164.74    163.03      163.14   

            Adj. Volume  
Date                     
2018-01-11    3783614.0  
2018-01-12    5007254.0  
"""

import quandl as qd
x=qd.get("WIKI/ibm")
print(x.head(2))
print(x.tail(2))




 

