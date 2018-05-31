"
  Name     : c7_05_tangent_line.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(fPortfolio)
data(GCCINDEX.RET)
retMatrix<-GCCINDEX.RET


tangencyPortfolio(as.timeSeries(retMatrix),constraints=’maxW[1:9]=0.2')



frontier=portfolioFrontier(as.timeSeries(retMatrix))
frontierPlot(frontier)
grid()





