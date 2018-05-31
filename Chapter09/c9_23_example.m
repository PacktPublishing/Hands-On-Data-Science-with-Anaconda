#{
  Name     : c9_23_example.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
#}


x = load('c:/temp/ex2x.dat');
y = load('c:/temp/ex2y.dat');
figure 
plot(x, y, 'o');
ylabel('Height in meters')
xlabel('Age in years')
