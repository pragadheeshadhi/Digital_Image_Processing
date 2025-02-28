clc;
close all;
img=imread("cameraman.tif");
gimg=img;
subplot(2,2,1);
imshow(img);
title("Original image");
P=size(gimg);
M=P(1);N=P(2);
F=fft2(gimg,M,N);
subplot(2,2,2);
imshow(uint8(abs(F)));
title("F(u,v)");
u0=70;
u1=50;
u=0:(M-1);
v=0:(N-1);
idx=find(u>M/2);
u(idx)=u(idx)-M;
idy=find(v>N/2);
v(idy)=v(idy)-N;
[V,U]=meshgrid(v,u);
D=sqrt(U.^2+V.^2);
H=1-(double(D<=u0))-((double(D<=u1)));
subplot(2,2,3);
imshow(abs(fftshift(H)),[]);
title("H(u,v)");
G=H.*F;
g=(ifft2(G));
subplot(2,2,4);
imshow(histeq(uint8(g)),[]);
title("Ringing problem");
