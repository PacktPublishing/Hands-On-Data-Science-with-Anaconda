"
  Name     : c5_26_f_distribution_graph.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

d1<-4
d2<-2
n<-100
x = seq(0, 5, length = n)
plot(x, df(x = x, df1 = d1, df2 = d2),type='l')





