"
  Name     : c4_31_pie_grey.R
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
name<-"Pie Chart of results"
colors<-seq(0.4, 1.0, length = length(results))
pie(results, labels = names, col = gray(colors),main=name)