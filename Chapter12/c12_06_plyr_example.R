"
  Name     : c12_06_plyr_example.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/14/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(plyr)
d1<-c(rep('A', 8), rep('B', 15), rep('C', 6))
d2<-sample(c("M", "F"), size = 29, replace = TRUE)
d3<-runif(n = 29, min = 18, max = 54)
#
dfx <- data.frame(group =d1,sex=d2,age=d3)
#
ddply(dfx, .(group, sex), summarize,
 mean = round(mean(age), 2),
 sd = round(sd(age), 2))
#
ddply(baseball[1:100,], ~ year, nrow)
ddply(baseball, .(lg), c("nrow", "ncol"))
rbi<-ddply(baseball, .(year), summarise,
      mean_rbi=mean(rbi, na.rm = TRUE))
plot(mean_rbi~year,type="l",data = rbi)
base2<-ddply(baseball,.(id),mutate,
    career_year = year - min(year) + 1
)





