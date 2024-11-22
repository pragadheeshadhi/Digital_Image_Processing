I=imread("cameraman.tif");
figure;
imshow(I);
title("Original image");
J=dct2(I);
figure;
imshow(J);
title("DCT image");
K=idct2(J);
figure;
imshow(K,[]);
title("Inverse DCT image");
