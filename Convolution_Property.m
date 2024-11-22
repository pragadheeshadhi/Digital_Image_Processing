clc;
close all;
a=ones(256);
[~, ~]=size(a);
for i=110:160
    for j=110:160
    a(i,j)=0;
    end
end
b=zeros(256);
[m, n]=size(b);
for i=110:140
    for j=110:140
        b(i,j)=255;
    end
end
subplot(221);
imshow(a);
title("Image 1");
subplot(222);
imshow(b);
title("Image 2");
c=conv2(a,b,'same');
a1=fft2(a);
b1=fft2(b);
c1=a1.*b1;
d1=fftshift(ifft2(c1));
subplot(223);
imshow(c);
title("Convolution in the spatial domain")
subplot(224);
imshow((d1));
title("Multiplication in the frequency domain");
