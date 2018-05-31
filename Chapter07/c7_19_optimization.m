#{
  Name     : c7_19_optimization.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 3/15/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

#}



OPTIONS = optimset('Display','iter');
function f = fun2(x)
   f = 0;
   for k = -5:5
      f = f + exp(-(x(1)-x(2))^2 - 2*x(1)^2)*cos(x(2))*sin(2*x(2));
   end
endfunction 
x0 = [0.5,-0.5];
[x,fval] = fminsearch(@fun2,x0,OPTIONS)


