clc;
close all;
l=imread("cameraman.tif");
n=imnoise(l,"gaussian");
subplot(2,2,1);
imshow(n);
title("Noisy image");
L=padarray(l,[1,1]);
[a,b]=size(L);
for i=2:a-1
    for j=2:b-1
        sto=[L(i-1,j-1),L(i-1,j),L(i-1,j+1),L(i,j-1),L(i,j),L(i,j+1),L(i+1,j-1),L(i+1,j),L(i+1,j+1)];
        r=max(sto);
        c=min(sto);
        output(i,j)=(r+c)/2;
    end
end
u=output;
subplot(2,2,2);
imshow(u);
title("Filtered image");
