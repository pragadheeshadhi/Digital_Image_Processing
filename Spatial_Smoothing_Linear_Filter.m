clc;
close all;
a=imread("cameraman.tif");
subplot(2,2,1);
imshow(a);
title("Original image");
a=double(a);
b=[1,1,1;1,1,1;1,1,1];
[m,n]=size(a);
[x,y]=size(b);
for i=1:m-x+1
    for j=1:n-y+1
        sum=0;
        for k=1:x
            for r=1:y
                sum=sum+a(i+k-1,j+r-1)*b(k,r);
            end
        end
        ans(i,j)=sum/9;
    end
end
subplot(2,2,2);
imshow(ans,[]);
title("Smoothened image");
