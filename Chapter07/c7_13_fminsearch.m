#{
  Name     : c7_13_fminsearch.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

  source:  https://octave.sourceforge.io/octave/function/fminsearch.html
#}


fcn = @(x) (x(1)-5).^2 + (x(2)-8).^4

x0 = [0;0];

[xmin, fval] = fminsearch (fcn, x0)

