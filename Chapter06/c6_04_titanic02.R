"
  Name     : c6_04_titanic02.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/1/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(rattle)   # Access weather dataset and utilities.
library(magrittr) # For the %>% and %<>% pipeline operators.

building <- TRUE
scoring  <- ! building

crv$seed <- 42 

data(list = "TitanicSurvival", package = "carData")
crs$dataset <- TitanicSurvival
names(crs$dataset) <- gsub("-", ".", names(crs$dataset))

set.seed(crv$seed)

crs$nobs     <- nrow(crs$dataset)
crs$train    <- crs$sample <- sample(crs$nobs, 0.7*crs$nobs)
crs$validate <- sample(setdiff(seq_len(crs$nobs), crs$train), 0.15*crs$nobs)
crs$test     <- setdiff(setdiff(seq_len(crs$nobs), crs$train), crs$validate)

# The following variable selections have been noted.
crs$input     <- c("survived", "sex", "age")
crs$numeric   <- "age"
crs$categoric <- c("survived", "sex")
crs$target    <- "passengerClass"
crs$risk      <- NULL
crs$ident     <- NULL
crs$ignore    <- NULL
crs$weights   <- NULL

set.seed(crv$seed)

crs$nobs     <- nrow(crs$dataset)
crs$train    <- crs$sample <- sample(crs$nobs, 0.7*crs$nobs)
crs$validate <- sample(setdiff(seq_len(crs$nobs), crs$train), 0.15*crs$nobs)
crs$test     <- setdiff(setdiff(seq_len(crs$nobs), crs$train), crs$validate)

# The following variable selections have been noted.
crs$input     <- c("sex", "age", "passengerClass")
crs$numeric   <- "age"
crs$categoric <- c("sex", "passengerClass")
crs$target    <- "survived"
crs$risk      <- NULL
crs$ident     <- NULL
crs$ignore    <- NULL
crs$weights   <- NULL

library(rpart, quietly=TRUE)
set.seed(crv$seed)

# Build the Decision Tree model.
crs$rpart <- rpart(survived ~ .,
    data=crs$dataset[crs$train, c(crs$input, crs$target)],
    method="class",
    parms=list(split="information"),
    control=rpart.control(usesurrogate=0, 
        maxsurrogate=0))

# Generate a textual view of the Decision Tree model.
print(crs$rpart)
printcp(crs$rpart)
cat("\n")

fancyRpartPlot(crs$rpart, main="Decision Tree TitanicSurvival $ survived")
asRules(crs$rpart)


