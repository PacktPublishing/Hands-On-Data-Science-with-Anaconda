"
  Name     : c12_02_lappy.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/14/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


lapply(1:3,function(x) c(sin(x),x^2))


myFunctions<-c(sin(x),x^2+2,4*x^2-x^3-2)
inputValue<-1:10
output<-lapply(inputValue,function(x) myFunctions)



