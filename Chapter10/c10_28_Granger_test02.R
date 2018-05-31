
"
  Name     : c10_28_Granger_test02.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(lmtest)
data(ChickEgg)
grangertest(chicken~egg, order = 3, data = ChickEgg)


grangertest(egg~chicken, order = 3, data = ChickEgg)