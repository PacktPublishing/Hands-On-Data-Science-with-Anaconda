"""
  Name     : c3_34_read_ffmonthly_csv.py
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/16/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"""

inFile<-"http://canisius.edu/~yany/data/ff3monthly.csv"
ff3monthly<-read.csv(inFile,skip=3)
saveRDS(ff3monthly,file="c:/temp/ff3monthly.rds")




