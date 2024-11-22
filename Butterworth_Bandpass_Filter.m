clc;
close all;
img=imread("cameraman.tif");
gimg=img;
subplot(2,2,1);
imshow(img);
title("Original image");
n=1;
H=(1./(1+(D./u0).^(2*n)))-(1./(1+(D./u1).^(2*n)));
subplot(2,2,2);
imshow(abs(fftshift(H)));
title("H(u,v)");
G=H.*F;
g=(ifft2(G));
subplot(2,2,3);
imshow(histeq(uint8(g)),[]);
title("Resultant image");
