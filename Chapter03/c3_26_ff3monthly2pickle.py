"""
  Name     : c3_24_ff3monthly2pickle.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""


import pandas as pd
infile="http://canisius.edu/~yany/data/ff3monthly.csv"
ff3=pd.read_csv(infile,skiprows=3)
print(ff3.head(2))
# output to pickle
ff3.to_pickle("c:/temp/ff3.pkl")
# output to a csv file 
outfile=open("c:/temp/ff3.csv","w")
ff3.to_csv(outfile,index=None)
outfile.close()
# output to text file
outfile2=open("c:/temp/ff3.txt","w")
ff3.to_csv(outfile2, header=True, index=None, sep=' ', mode='a')
outfile2.close()


