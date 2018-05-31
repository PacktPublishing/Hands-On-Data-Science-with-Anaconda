"
  Name     : c6_17_financialCalculator.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/1/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"



pv_f<-function(fv,r,n) fv/(1+r)^n
fv_f<-function(pv,r,n)pv*(1+r)^n
pv_annuity<-function(c,r,n)c/r*(1-1/(1+r)^n)
fv_annuity<-function(c,r,n)c/r*((1+r)^n-1)
pv_perptuity<-function(c,r)c/r
pv_perptuityDue<-function(c,r)c/r*(1+r)
