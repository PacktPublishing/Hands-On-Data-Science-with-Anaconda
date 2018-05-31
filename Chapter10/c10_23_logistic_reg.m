#{
  Name     : c10_23_logistic_reg.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/24/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

#}


load('c:/temp/numbers.mat');
fprintf("Visualize sample-data...\n");
colormap(gray);
for idx=1:10
    subplot(1, 10, idx);
    imagesc(reshape(X((idx-1)*500+1, :), 20, 20));
    axis("square", "off");
end
fprintf('Program paused. Press enter to continue.\n');
pause;
close();
% identify labels
labels = unique(y);
% split data to training, validation, and test sets
Xtrain = zeros(3000, 400);
ytrain = zeros(3000, 1);
Xval = zeros(1000, 400);
yval = zeros(1000, 1);
Xtest = zeros(1000, 400);
ytest = zeros(1000, 1);
for idx=1:10
    from = (idx-1)*500;
    fromTrain = (idx-1)*300;
    fromValTest = (idx-1)*100;
    Xtrain(fromTrain+1:fromTrain+300, :) = X(from+1:from+300, :);
    ytrain(fromTrain+1:fromTrain+300, :) = y(from+1:from+300, :);
    Xval(fromValTest+1:fromValTest+100, :) = X(from+301:from+400, :);
    yval(fromValTest+1:fromValTest+100, :) = y(from+301:from+400, :);
    Xtest(fromValTest+1:fromValTest+100, :) = X(from+401:from+500, :);
    ytest(fromValTest+1:fromValTest+100, :) = y(from+401:from+500, :);
end
% add bias-terms
XtrainBias=addBiasTerm(Xtrain);
XvalBias=addBiasTerm(Xval);
XtestBias=addBiasTerm(Xtest);
% choose regulaization factor
lambda = chooseRegularizationForLogisticGradDesc(XtrainBias, ytrain, XvalBias, yval);
% compute theta-matrix
AllTheta = logisticRegressionOneVsAllTheta(XtrainBias, ytrain, labels, lambda);
% predict from xtest
x = Xtest(500, :);
xBias = addBiasTerm(x);
label = predictByLogisticGradDescOneVsAll(xBias, AllTheta);
fprintf("Label - Predicted: %d versus Actual: %d\n", label, ytest(500));
% generalized prediction error (cost) versus test-set
error = logisticRegressionOneVsAllError(XtestBias, ytest, AllTheta);
fprintf("Generalized prediction error: %.3f %%\n", error*100);
