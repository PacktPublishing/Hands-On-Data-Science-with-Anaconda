#{
  Name     : c10_26_pca.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

#}


%init
initEnv();

% load data for 5000 face-images of 32 x 32 size in grayscale
load ('faces.mat');

% normalize input-features
[mu, sigma] = computeScalingParams(X);
XNorm = scaleFeatures(X, mu, sigma);

% perform PCA
fprintf('Computing PCA...\n');
if exist('OCTAVE_VERSION')
    fflush(stdout);
end
[U, S] = computePCA(XNorm);

% project data into reduced size
k = 100;
fprintf('Projecting data to reduced dimensional space - from: %d to: %d\n', size(XNorm, 2), k);
if exist('OCTAVE_VERSION')
    fflush(stdout);
end
[Z, variance] = projectPCAData(XNorm, U, S, k);
fprintf('Varianced retained by projecting to reduced-size: %f\n', variance);

% recover data from reduced-set
fprintf('Recovering data to original dimensional space...\n');
if exist('OCTAVE_VERSION')
    fflush(stdout);
end
XRec = recoverPCAData(Z, U, k);

fprintf("Visualize face data before and after reduction\n");
colormap(gray);
for idx=1:10
    subplot(2, 10, idx);
    imagesc(reshape(X(idx, :), 32, 32));
    axis("square", "off");
    subplot(2, 10, 10+idx);
    imagesc(reshape(XRec(idx, :), 32, 32));
    axis("square", "off");
end
