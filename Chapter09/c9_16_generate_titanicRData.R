
"
  Name     : c9_16_generate_titanicRData.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

x<-read.csv("c:/temp/titanic.csv")

> head(x)
  CLASS   AGE GENDER SURVIVED
1 First Adult   Male      Yes
2 First Adult   Male      Yes
3 First Adult   Male      Yes
4 First Adult   Male      Yes
5 First Adult   Male      Yes
6 First Adult   Male      Yes



.titanic<-x
saveRDS(.titanic,file="c:/temp/titanic.rds")

save(.titanic,file="c:/temp/titanic.RData")


path<-"http://canisius.edu/~yany/RData/"
dataSet<-"titanic"
link<-paste(path,dataSet,".RData",sep='')
con<-url(link)
load(con)
dim(.titanic)
head(.titanic)



