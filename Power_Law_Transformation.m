clc;
close all;
a=imread('cameraman.tif');
subplot(2,2,1);
imshow(a);
title("Original image");
gamma=1.1;
d=double(a).^gamma;
subplot(2,2,2);
imshow(uint8(d));
title("Power law transformation image");

