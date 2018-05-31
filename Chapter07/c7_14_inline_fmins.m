#{
  Name     : c7_14_inline_fmins.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

  source:  https://octave.sourceforge.io/octave/function/fminsearch.html
#}



fmins(inline('(x(1)-5).^2+(x(2)-8).^4'),[0;0])
