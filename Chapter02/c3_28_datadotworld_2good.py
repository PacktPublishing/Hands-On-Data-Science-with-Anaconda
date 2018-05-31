"""
  Name     : c3_28_datadotworld_2good.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

DataDotWorldBBallStats.name  pointspergame  assistspergame  \
0                         Jon           20.4             1.3   
1                         Rob           15.5             8.0   
2                      Sharon           30.1            11.2   
3                        Alex            8.2             0.5   
4                     Rebecca           12.3            17.0   
5                      Ariane           18.1             3.0   
6                       Bryon           16.0             8.5   
7                        Matt           13.0             2.1   

  DataDotWorldBBallTeam.name  height handedness  
0                        Jon    6'5"      Right  
1                        Rob  6'7.5"       Left  
2                     Sharon    6'3"      Right  
3                       Alex    6'2"      Right  
4                    Rebecca      7'      Right  
5                     Ariane    5'8"       Left  
6                      Bryon      7'      Right  
7                       Matt    5'5"      Right  
"""

import datadotworld as dw
name='jonloyens/an-intro-to-dataworld-dataset'
results = dw.query(name,
    'SELECT * FROM `DataDotWorldBBallStats`, `DataDotWorldBBallTeam` '
    'WHERE DataDotWorldBBallTeam.Name = DataDotWorldBBallStats.Name')
df = results.dataframe
print(df)