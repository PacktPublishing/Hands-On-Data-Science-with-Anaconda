"""
  Name     : c3_27_datadotworld_1.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import datadotworld as dw
dataset = 'jonloyens/an-intro-to-dataworld-dataset'
data = dw.load_dataset(dataset, force_update=True) 
list(dataset.dataframes)