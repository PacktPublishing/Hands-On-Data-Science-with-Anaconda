"
  Name     : c4_20_save_pdf.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"


pdf("c:/temp/myGraph.pdf")
plot(cos,-2*pi,2*pi)
dev.off()