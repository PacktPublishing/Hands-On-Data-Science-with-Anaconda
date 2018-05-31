"
  Name     : c3_05_saveRDS.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

   1. sepal length in cm
   2. sepal width in cm
   3. petal length in cm
   4. petal width in cm
   5. class: 
      -- Iris Setosa
      -- Iris Versicolour
      -- Iris Virginica
"

inFile<-"http://canisius.edu/~yany/data/ff3monthly.csv"
ff3monthly<-read.csv(inFile)
saveRDS(ff3monthly,file="c:/temp/ff3monthly.rds")



> abc<-readRDS("c:/temp/ff3monthly.rds")
> head(abc,3)
        DATE MKT_RF     SMB     HML     RF
1 1926-07-01 0.0296 -0.0230 -0.0287 0.0022
2 1926-08-01 0.0264 -0.0140  0.0419 0.0025
3 1926-09-01 0.0036 -0.0132  0.0001 0.0023
> head(ff3monthly,3)
        DATE MKT_RF     SMB     HML     RF
1 1926-07-01 0.0296 -0.0230 -0.0287 0.0022
2 1926-08-01 0.0264 -0.0140  0.0419 0.0025
3 1926-09-01 0.0036 -0.0132  0.0001 0.0023







