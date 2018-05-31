"
  Name     : c3_33_generate_z_csv.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

set.seed(123)
n=500
x<-rnorm(n)
x2<-x
m=100
y<-as.integer(runif(m)*n)
x[y]<-0
z<-matrix(x,n/10,10)
outFile<-"c:/temp/z.csv"
write.table(z,file=outFile,quote=F,row.names=F,col.names=F,sep=',')













