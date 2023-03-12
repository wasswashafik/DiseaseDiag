%% Random forest classification
function Factor = TreeBaggerClassic(train_data, train_label)

%% Call the random forest training function 
Factor = TreeBagger(50,train_data,train_label,'oobpred','on');
plot(oobError(Factor));
xlabel('number of grown trees');
ylabel('out-of-bag classification error');

%% Classification using a trained random forest
%predict(Factor,train_data(1,:))
%predict(Factor,train_data(2,:))
%predict(Factor,train_data)