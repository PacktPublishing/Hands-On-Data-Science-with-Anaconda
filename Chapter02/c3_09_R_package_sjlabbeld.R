"
  Name     : c3_09_package_sjlabbeld.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(sjlabelled)
mydat <- read_spss("my_spss_data.sav")
# retrieve variable labels
mydat.var <- get_label(mydat)




mydat <- read_spss("my_spss_data.sav", atomic.to.fac = TRUE)

# retrieve value labels
mydat.val <- get_labels(mydat)
## End(Not run)



x<-1:100

write_spss(x,"c:/temp/t.spss", drop.na = FALSE)

write_stata(x, "c:/temp/stat.csv",drop.na = FALSE, version = 14)

write_sas(x, c"://temp/t.sas7bdat", drop.na = FALSE)

