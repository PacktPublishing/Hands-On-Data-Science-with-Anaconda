"
  Name     : c4_03_pie.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

results <- c(10,8,7,4,6)
names<-c("1st","2nd","3rd","4th","5th")
pct<-round(results/sum(results)*100)
pct2<-rev(sort(pct))
pie(results, labels = names, main="Pie Chart of results")
