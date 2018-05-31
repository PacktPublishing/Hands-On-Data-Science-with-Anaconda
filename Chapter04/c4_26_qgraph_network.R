"
  Name     : c4_26_qgraph_network.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(qgraph)
data(big5)
data(big5groups)
title("Correlations among 5 factors",line = 2.5)
qgraph(cor(big5),minimum = 0.25,cut = 0.4,vsize = 1.5,
    groups = big5groups,legend = TRUE, borders = FALSE,theme = 'gray')


# colorful one 
"
 qgraph(cor(big5),minimum = 0.25,cut = 0.4,vsize = 1.5,
    groups = big5groups,legend = TRUE, borders = FALSE)

"

