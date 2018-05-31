#{
  Name     : c10_24_ddd.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

#}



%init
%initEnv();
% read spam-vocab list into a struct
% words which occur at least a 100 times in the spam corpus
n = 1899; % list size
vocabList = cell(n, 1);
fid = fopen('c:/temp/spam-vocab.txt');
for i=1:n
    vocabList{i} = fscanf(fid, '%s', 1);
end
fclose(fid);
% Load the Spam Email training & test datasets based on above spam-vocab list
% X/Xtest: vector of length 1899 with 1 for known spam-words, and 0 otherwise
% y/ytest: spam classification of 0 or 1
load('c:/temp/spamTrain.mat'); % adds X, y to environment
load('c:/temp/spamTest.mat'); % adds Xtest, ytest to environment

fprintf("Computing C & sigma for RBF-Kernel in SVM - this will take some time...\n");
[C, gamma] = chooseRBFParamsForSVM(X, y, Xtest, ytest);

% SVM training
% -s 0 : classification
% -t 2 : RBF/Gaussina kernel
% -c number : C
% -g number : gamma
fprintf("Training SVM with RBF-Kernel for C: %g and gamma: %g\n", C, gamma);
model = svmtrain(y, X, sprintf('-s 0 -t 2 -c %g -g %g', C, gamma));

%% extract features from sample emails & predict
num = 3;
emailFeatures = zeros(1, n);
for i=1:num
    fileName = sprintf('email-sample-%d.txt', i);
    emailFeatures = extractEmailFeatures(fileName, vocabList);
    [pred, acc, prob] = svmpredict([0], emailFeatures, model, '-q');
    if(pred == 1)
        fprintf("%s is spam\n", fileName);
    else
        fprintf("%s is NOT spam\n", fileName);
    end
end