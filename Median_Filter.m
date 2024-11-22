clc;
close all;
L=imread("cameraman.tif");
L=imnoise(L,"salt & pepper",0.1);
b=L;
[r,c]=size(L);
for i=2:r-1
    for j=2:c-1
        mat=[L(i-1,j-1),L(i-1,j),L(i-1,j+1),L(i,j-1),L(i,j),L(i,j+1),L(i+1,j-1),L(i+1,j),L(i+1,j+1)];
        mat=sort(mat);
        b(i,j)=mat(5);
    end
end
subplot(2,2,1);
imshow(L);
title("Salt and pepper noise");
subplot(2,2,2);
imshow(b);
title("Filtered image");
