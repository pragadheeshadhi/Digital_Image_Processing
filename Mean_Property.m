I=imread("cameraman.tif");
[x y]=size(I);
sum1=sum(I,'all');
F=fft2(I);
sum1;
F(1,1);
if F(1,1)==sum1
    disp("Mean property is verified");
end