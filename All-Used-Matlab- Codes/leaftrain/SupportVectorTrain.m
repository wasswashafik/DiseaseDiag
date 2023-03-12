function SupportVectorTrain(train_data, train_label)

kernal='rbf';
for i=1:4
    for j=1:i-1
        train_datai=train_data(train_label==i,:);
        train_dataj=train_data(train_label==j,:);
        x=[train_datai;train_dataj];
        s=size(x);
        y=ones(s(1),1);
        si=size(train_datai);
        y(si(1)+1:end)=-1;
%         [i,j]
        svmStruct(i,j)= fitcsvm(x,y,'Kernel_Function',kernal);
    end
end
save svmStruct svmStruct;
result = SupportVector1(svmStruct,train_data);