clc;
close all;
I=imread("peppers.png");
subplot(2,2,1);
imshow(I);
title("Original image");
S=4; % Scaling factor
I_new=I.*S;
subplot(2,2,2);
imshow(I_new);
title("Scaled image");
y=fftn(I_new);
subplot(2,2,3);
imshow(y);
title("Transformed scaled image");
y2=ifftn(y);
subplot(2,2,4);
imshow(y2);
title("Inverse image");
