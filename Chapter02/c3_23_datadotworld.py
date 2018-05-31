"""
  Name     : c3_23_datadotworld.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import datadotworld as dw
dataset = dw.load_dataset('c:/temp/an-intro-to-dataworld-dataset')
list(dataset.dataframes)
    ['changelog', 'datadotworldbballstats', 'datadotworldbballteam']

