#{
  Name     : c7_15_fminsearch.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

  source:  https://octave.sourceforge.io/octave/function/fminsearch.html
#}


fun = @(x)50*(x(1)^2-x(2))^2 + (x(1)-3)^2;
x0 = [0,0];
x = fminsearch(fun,x0)
