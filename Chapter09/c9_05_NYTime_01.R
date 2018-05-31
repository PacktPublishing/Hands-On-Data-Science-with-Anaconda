"
  Name     : c9_05_NYTime_01.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(RTextTools)
data(NYTimes)
set.seed(123)
data <- NYTimes[sample(1:3100,size=100,replace=FALSE),]
head(data)



matrix <- create_matrix(cbind(data["Title"],data["Subject"]), language="english", 
removeNumbers=TRUE, stemWords=FALSE, weighting=tm::weightTfIdf)
container <- create_container(matrix,data$Topic.Code,trainSize=1:75, testSize=76:100, 
virgin=FALSE)
models <- train_models(container, algorithms=c("MAXENT","SVM"))
results <- classify_models(container, models)
score_summary <- create_scoreSummary(container, results)


