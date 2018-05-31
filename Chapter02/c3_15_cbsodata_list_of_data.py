"""
  Name     : c3_15_cbsodata_list_of_data.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

import cbsodata as cb
list=cb.get_table_list()
print(list)