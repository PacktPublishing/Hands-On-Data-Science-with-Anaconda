"
  Name     : c5_08_remove_missing_data.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


x<-c(NA,1,2,50,NA)
y<-na.omit(x)
mean(x)
mean(y)




y2<-na.exclude(x)

mean(y)

