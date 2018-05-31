"
  Name     : c4_25_bisection_html.R
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
"

library(animation)
a<- c(4, 4, 1, 2)
part1<-"The bisection method is a root-finding algorithm"
part2<-"which works by repeatedly dividing an interval in half and then"
part3<-"selecting the subinterval in which a root exists."
des<-c(part1,part2,part3)
titleName<-"The Bisection Method for Root-finding on an Interval"
#
saveHTML({
    par(mar = a)
    bisection.method(main = "")
    },img.name = "bisection.method", htmlfile = "bisection.method.html", 
    ani.height = 400, ani.width = 600, interval = 1, 
    title = titleName, description =des)





