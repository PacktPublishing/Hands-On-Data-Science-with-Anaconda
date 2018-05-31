"""
  Name     : c6_22_import_myPackage.py
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/1/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

sys.path.append("c:/temp/")
import myPackage as my
x=dir(my)
print(x)
