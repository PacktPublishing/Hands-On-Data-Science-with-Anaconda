"
  Name     : c9_03_simplified_tree_titanic.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(rpart, quietly=TRUE)
building <- TRUE
scoring  <- ! building
set.seed(42)
crs$dataset <- x
str(crs$dataset)
crs$nobs     <- nrow(crs$dataset)
crs$train    <- crs$sample <- sample(crs$nobs, 0.7*crs$nobs)
crs$validate <- sample(setdiff(seq_len(crs$nobs), crs$train), 0.15*crs$nobs)
crs$test     <- setdiff(setdiff(seq_len(crs$nobs), crs$train), crs$validate)
crs$input    <- c("CLASS", "AGE", "GENDER")
crs$numeric  <- NULL
crs$categoric<- c("CLASS", "AGE", "GENDER")
crs$target   <- "SURVIVED"
crs$risk     <- NULL
crs$ident    <- NULL
crs$ignore   <- NULL
crs$weights  <- NULL
#set.seed(crv$seed)
crs$rpart <- rpart(SURVIVED ~ .,data=crs$dataset[crs$train, c(crs$input, crs$target)],
    method="class",parms=list(split="information"),control=rpart.control(usesurrogate=0, 
    maxsurrogate=0))
print(crs$rpart)
printcp(crs$rpart)
cat("\n")
fancyRpartPlot(crs$rpart, main="Decision Tree x $ SURVIVED")



