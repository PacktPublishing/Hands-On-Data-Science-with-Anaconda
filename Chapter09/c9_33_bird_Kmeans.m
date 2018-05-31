#{
  Name     : c9_33_birk_kMeans.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
#}


A = double(imread('bird_small.png'));
A = A / 255; % Divide by 255, values in the range 0 - 1
imgSize = size(A);
X = reshape(A, imgSize(1) * imgSize(2), 3);
k = 16; % using 4-bit (16) colors,minimize cost
[Centroids,idx,cost]=generateKMeansClustersMinCost(X,k,10,10);
fprintf('Cost/Distortion of computed clusters:%.3f\n', cost);
% regenerate colors & image
NewX = Centroids(idx, :);
NewA = reshape(NewX, imgSize(1), imgSize(2), 3);
% compare both the images
fprintf('Comparing original & compressed images\n');
subplot(1, 2, 1);
imagesc(A);
axis("square");
title('Original');
subplot(1, 2, 2);
imagesc(NewA);
axis("square");
title('Compressed');