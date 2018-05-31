"
  Name     : c10_02_using_Liblinear02.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/23/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(LiblineaR
data(iris)
attach(iris)
x=iris[,1:4]
y=factor(iris[,5])
train=sample(1:dim(iris)[1],100)
xTrain=x[train,];xTest=x[-train,]
yTrain=y[train]; yTest=y[-train]
s=scale(xTrain,center=TRUE,scale=TRUE)
#
tryTypes=c(0:7)
tryCosts=c(1000,1,0.001)
bestCost=NA
bestAcc=0
bestType=NA
#
for(ty in tryTypes){
   for(co in tryCosts){
     acc=LiblineaR(data=s,target=yTrain,type=ty,cost=co,bias=1,cross=5,verbose=FALSE)
     cat("Results for C=",co,": ",acc," accuracy.\n",sep="")
     if(acc>bestAcc){
         bestCost=co
         bestAcc=acc
         bestType=ty
     }
   }
}
cat("Best model type is:",bestType,"\n")
cat("Best cost is:",bestCost,"\n")
cat("Best accuracy is:",bestAcc,"\n")
# Re-train best model with best cost value.
m=LiblineaR(data=s,target=yTrain,type=bestType,cost=bestCost,bias=1,verbose=FALSE)
# Scale the test data
s2=scale(xTest,attr(s,"scaled:center"),attr(s,"scaled:scale"))
pr=FALSE; # Make prediction
if(bestType==0 || bestType==7) pr=TRUE
p=predict(m,s2,proba=pr,decisionValues=TRUE)
res=table(p$predictions,yTest) # Display confusion matrix
print(res)
# Compute Balanced Classification Rate
BCR=mean(c(res[1,1]/sum(res[,1]),res[2,2]/sum(res[,2]),res[3,3]/sum(res[,3])))
#output
print(BCR)


cat("Best model type is:",bestType,"\n")
cat("Best cost is:",bestCost,"\n")
cat("Best accuracy is:",bestAcc,"\n")
print(res)
print(BCR)

