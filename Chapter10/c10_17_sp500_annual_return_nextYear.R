"
  Name     : c10_17_sp500_annual_return_nextYear.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(data.table)
path<-'http://canisius.edu/~yany/RData/'
dataSet<-'sp500monthly.RData'
link<-paste(path,dataSet,sep='')
load(url(link))
#head(.sp500monthly,2)
p<-.sp500monthly$ADJ.CLOSE
n<-length(p)
logRet<-log(p[2:n]/p[1:(n-1)])
years<-format(.sp500monthly$DATE[2:n],"%Y")
y<-data.frame(.sp500monthly$DATE[2:n],years,logRet)
colnames(y)<-c("DATE","YEAR","LOGRET")
y2<- data.table(y)
z<-y2[,sum(LOGRET),by=YEAR]
z2<-na.omit(z)
annualRet<-data.frame(z2$YEAR,exp(z2[,2])-1)
n<-nrow(annualRet)
std<-sd(annualRet[,2])
stdErr<-std/sqrt(n)
ourMean<-mean(annualRet[,2])
min2<-ourMean-2*stdErr
max2<-ourMean+2*stdErr
cat("[min    mean     max ]\n")
cat(min2,ourMean,max2,"\n")



