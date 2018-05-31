"
  Name     : c3_16_missing_code.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

> head(na_example,20)
 [1]  2  1  3  2  1  3  1  4  3  2  2 NA  2  2  1  4 NA  1  1  2
> length(na_example)
[1] 1000
> x<-na.exclude(na_example)
> length(x)
[1] 855
> head(x,20)
 [1] 2 1 3 2 1 3 1 4 3 2 2 2 2 1 4 1 1 2 1 2
> 
