
%% ANN-Training 
%{
 Name: Wasswa Shafik
 Email ID: wasswashafik@gmail.com
 
Description:This is ANN-Training script. This function is used to produce a trained network
%}

%% Starting function
function [err] = ANNTrain(x,y)

%% Dataset splitting 
% using 2/3 dataset as training set to train the network
% and 1/3 dataset as testing set to optimize the network parameters

TF = {'tansig','purelin'};
BTF = 'trainlm';
BLF = 'learngdm';
PF = 'mse';


CVO = cvpartition(y,'k',3);
trIdx = CVO.training(1);
teIdx = CVO.test(1);

%% data transformation
[x2 y2] = ANNdata(x,y); 

net = newff([],[],20,TF,BTF,BLF,PF);

%% net.trainParam

%net.trainParam.show = 5;
net.trainParam.epochs = 100;
%net.trainParam.goal = 0.2;
%net.trainParam.lr = 0.01;

%% Training the network
[net, tr]= train(net, x2(:,trIdx), y2(:,trIdx)); 


%% Predicting results matrices of test data
predictionMatrix = sim(net,x2(:, teIdx)); 

%% final emotion predictions
[value, predictions] = max(predictionMatrix,[],1); 


%% Comparing with each real value to get the error
predictions = num2cell(predictions);
err = sum(~(cellfun(@isequal, predictions,num2cell(y(teIdx,:)')))); 
err = err/length(y(teIdx,:));

save('net.mat', 'net');

