function oo = indirect_otsu(img)
I = img;

level1 = graythresh(I)
BW1 = im2bw(I,level1);

%imshow(BW1);

%hold on;
[rows,cols] = size(I);

%imshow(I);

%hold on;

%level2 = graythresh(I);
%BW2 = im2bw(I,level2);
%imshow(BW2);


for p=1:2
        
    I = uint8(BW1.*double(I));
    
    Ni=imhist(I);
    Ni(1) = 0;
    N=sum(Ni);
    delamax=0;
    threshold=0;
    for k=2:255
        u=dot(0:255,Ni/N);
        w0=sum(Ni(1:k)/N); 
        w1=1-w0;            
        if w0==0||w0==1      
            continue
        end
        u0=dot(0:(k-1),Ni(1:k)/N)/w0;   
        u1=dot(k:255,Ni(k+1:256)/N)/w1; 
        dela(k)=w0*(u-u0)^2+w1*(u-u1)^2;  
% Find the maximum value of the variance between classes, and the k value 
% corresponding to the maximum value is stored in
        if dela(k)>delamax
            delamax=dela(k);
            threshold=k-1;
        end
    end
% Below % is the threshold segmentation program
    if p == 2
        t2 = threshold;
    end
    if p == 3
        t3 = threshold;
        %	threshold = t2+(t3-t2)*0;
    end
    
% Get image width and height
    [width,height]=size(I);
    for i=1:width
        for j=1:height
            if(I(i,j)<threshold) % when the gray level is less than the threshold, it is black
                BW1(i,j)=0;
            else
                BW1(i,j)=1; % when the grayscale is greater than the threshold, it is white
            end
        end
    end
    
    if i == 2
        t2 = threshold;
    end
    
    
    if i == 3
        t3 = threshold;
    end
    
    %figure
    %hold on;
    %imshow(BW1),title ('Self-programming results')% display pictures
    
end
oo = BW1;
%figure
%imshow(BW1),title('Self-programming results')% display pictures