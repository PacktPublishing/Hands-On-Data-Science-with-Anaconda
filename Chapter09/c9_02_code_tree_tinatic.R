"
  Name     : c9_02_code_tree_titanic.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

building <- TRUE
scoring  <- ! building

# A pre-defined value is used to reset the random seed 
# so that results are repeatable.

crv$seed <- 42 

#============================================================
# Rattle timestamp: 2018-03-28 10:14:25 i386-w64-mingw32 

# Load an R data frame.

crs$dataset <- x

# Display a simple summary (structure) of the dataset.

str(crs$dataset)

#============================================================
# Rattle timestamp: 2018-03-28 10:14:26 i386-w64-mingw32 

# Note the user selections. 

# Build the train/validate/test datasets.

# nobs=2201 train=1540 validate=330 test=331

set.seed(crv$seed)

crs$nobs     <- nrow(crs$dataset)
crs$train    <- crs$sample <- sample(crs$nobs, 0.7*crs$nobs)
crs$validate <- sample(setdiff(seq_len(crs$nobs), crs$train), 0.15*crs$nobs)
crs$test     <- setdiff(setdiff(seq_len(crs$nobs), crs$train), crs$validate)

# The following variable selections have been noted.

crs$input     <- c("CLASS", "AGE", "GENDER")

crs$numeric   <- NULL

crs$categoric <- c("CLASS", "AGE", "GENDER")

crs$target    <- "SURVIVED"
crs$risk      <- NULL
crs$ident     <- NULL
crs$ignore    <- NULL
crs$weights   <- NULL

#============================================================
# Rattle timestamp: 2018-03-28 10:15:12 i386-w64-mingw32 

# Decision Tree 

# The 'rpart' package provides the 'rpart' function.

library(rpart, quietly=TRUE)

# Reset the random number seed to obtain the same results each time.

set.seed(crv$seed)

# Build the Decision Tree model.

crs$rpart <- rpart(SURVIVED ~ .,
    data=crs$dataset[crs$train, c(crs$input, crs$target)],
    method="class",
    parms=list(split="information"),
    control=rpart.control(usesurrogate=0, 
        maxsurrogate=0))

# Generate a textual view of the Decision Tree model.

print(crs$rpart)
printcp(crs$rpart)
cat("\n")

# Time taken: 0.18 secs

#============================================================
# Rattle timestamp: 2018-03-28 10:15:22 i386-w64-mingw32 

# Plot the resulting Decision Tree. 

# We use the rpart.plot package.

fancyRpartPlot(crs$rpart, main="Decision Tree x $ SURVIVED")