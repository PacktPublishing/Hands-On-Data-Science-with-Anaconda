"
  Name     : c3_32_write_sas_write_spss_write_stata.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 5/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(haven)
x<-1:100
y<-matrix(x,50,2)
z<-data.frame(y)
colnames(z)<-c("a","b")
write_sas(z,"c:/temp/tt.sas7bdat")
write_spss(z,"c:/temp/tt.sav")
write_stata(z,"c:/temp/tt.dta")

