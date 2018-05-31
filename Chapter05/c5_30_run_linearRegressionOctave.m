#{
  Name     : c5_30_run_linearRegressionOctave.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 1/25/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
#}


rand('seed',123)
n = 50;
x = sort(rand(n,1)*5-1);
y = 2+1.5*x + randn(size(x));
figure % open a new figure window
plot(x, y, 'o');

#
n = length(y); 
x2= [ones(n, 1), x];  % Add a column of ones to x
b = inv(x2'*x2)*x2'*y;
R = y - (x2 * b);        # residuals
v = (R'*R)/(4 - 3);      # residual variance
sigma = v * inv(x2'*x2); # variance covariance matrix
se = sqrt(diag(sigma));  # std errors of parameters 
