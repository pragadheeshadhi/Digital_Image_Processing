clc;
close all;
a=imread("cameraman.tif");
b=255-a;
subplot(2,2,1);
imshow(a);
title("Original image");
subplot(2,2,2);
imshow(b);
title("Negative image");
