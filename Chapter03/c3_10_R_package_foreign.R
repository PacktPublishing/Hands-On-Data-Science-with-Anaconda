"
  Name     : c3_10_R_package_foreigh.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

# http://calcnet.mth.cmich.edu/org/spss/Prj_airlinePassengers.htm

library(foreign)
x<-read.spss("c:/temp/airline_passengers.sav", to.data.frame=TRUE)




