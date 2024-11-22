clc;
close all;
L=imread("cameraman.tif");
x=rand(size(L));
L(x(:)>0.95)=255;
subplot(2,2,1);
imshow(L);
title("Noisy image");
sto=[];
[a,b]=size(L);
output=zeros(a,b);
for i=2:a-1
    for j=2:b-1
        sto=[L(i-1,j-1),L(i-1,j),L(i-1,j+1),L(i,j-1),L(i,j),L(i,j+1),L(i+1,j-1),L(i+1,j),L(i+1,j+1)];
        es=min(sto);
        output(i,j)=es;
        sto=[];
    end
end
subplot(2,2,2);
imshow(uint8(output));
title("Filtered image");
