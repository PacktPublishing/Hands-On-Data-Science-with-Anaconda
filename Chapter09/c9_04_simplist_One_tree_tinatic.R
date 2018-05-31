"
  Name     : c9_04_simplist_tree_titanic.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(rpart, quietly=TRUE)
con<-url("http://canisius.edu/~yany/RData/titanic.RData")
load(con)
x<-.titanic
scoring  <- FALSE
set.seed(42)
risk<-ident<-ignore<-weights<-numeric<-NULL
str(dataset)
n<- nrow(dataset)
train  <- sample <- sample(n,0.7*n)
validate<- sample(setdiff(seq_len(n),train),0.15*n)
test<- setdiff(setdiff(seq_len(n), train), validate)
inputVars<-categoric<-c("CLASS","AGE","GENDER")
target<-"SURVIVED"
output<-rpart(SURVIVED~.,data=x[train, c(inputVars, target)],
   method="class",parms=list(split="information"),control=
   rpart.control(usesurrogate=0,maxsurrogate=0))
fancyRpartPlot(output, main="Decision Tree for Titanic")








