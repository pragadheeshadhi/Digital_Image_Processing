I = imread("cameraman.tif");
J = imnoise(I,"salt & pepper",0.02);
subplot(2,2,1);
imshow(J);
title("Salt & pepper noise");
K = medfilt2(J);
subplot(2,2,2);
imshow(K);
title("Mean filtered image");
