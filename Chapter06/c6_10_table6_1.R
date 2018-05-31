"
  Name     : c6_10_table6_1.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/1/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


library(rattle)

require(rattle)

install.packages("rattle")

update.packages("rattle")

search()

library()

"package:XML" %in% search()

"package:XML" %in% .packages(all.available=T)

detach(package:rattle)

detach("package:rattle",unload=TRUE)

help(package=rattle)

library(help="rattle")
