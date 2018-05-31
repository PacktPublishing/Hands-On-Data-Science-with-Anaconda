#{
  Name     : c9_26_test.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
#}

function initEnv
   % load packages
   pkg load specfun;
   % set-path for octavelib
   addpath([pwd() 'c:/temp/']);
   % clear
   clear ; close all; clc;
end



%init
initEnv();
%  Loads the dataset - adds X, Xval, yval to environment
load('c:/temp/anomaly.dat');

%print(X);

% compute gaussian parameters
%[mu sigma2] = computeGaussianParams(X);

% compute epsilon/threshold for probablity using validation-set
%epsilon = computeThresholdForMultivarGaussian(Xval, yval, mu, sigma2);

% compute multivariate Guassian distribution probablity
%probability = computeMultivarGaussianDistribution(X, mu, sigma2);

% count of outliers
%fprintf("Number of outliers found: %d\n", sum(probability < epsilon));