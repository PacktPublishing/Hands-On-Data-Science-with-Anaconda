
"
  Name     : c3_21_sort_order.R
  Book     : Hands-on Data Science with Anaconda)
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

>  dim(nyseListing)
[1] 3387    4
>  head(nyseListing)
  Symbol                         Name MarketCap Exchange
1      A   Agilent Technologies, Inc. $12,852.3     NYSE
2     AA                   Alcoa Inc. $28,234.5     NYSE
3    AAI       AirTran Holdings, Inc.    $156.9     NYSE
4    AAP       Advance Auto Parts Inc  $3,507.4     NYSE
5    AAR              AMR CORPORATION     $81.7     NYSE
6    AAV ADVANTAGE ENERGY INCOME FUND  $1,674.4     NYSE
> 
>  x<-nyseListing[order(nyseListing$Name),]
>  head(x)
     Symbol                        Name MarketCap Exchange
2017    MMM                  3M Company $48,398.7     NYSE
557     CFD 40/86 Strategic Income Fund     $56.8     NYSE
1721    KDE   4Kids Entertainment, Inc.     $99.7     NYSE
2164    NDN        99 CENTS ONLY STORES    $432.3     NYSE
87      AHC       A.H. Belo Corporation    $107.4     NYSE
1242    GFW    AAG Holding Company Inc.      <NA>     NYSE

"

 library(fImport)
 data(nyseListing)
 dim(nyseListing)
 head(nyseListing)

 x<-nyseListing[order(nyseListing$Name),]
 head(x)



