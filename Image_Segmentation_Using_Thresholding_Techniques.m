x=imread("cameraman.tif");
figure;
imshow(x);
title("Original image");
[a,b]=size(x);
y=60;
for i=1:1:a
    for j=1:1:b
        if (x(i,j)>y)
            x1(i,j)=1;
        else
            x1(i,j)=0;
        end
    end
end
for i=1:1:a
    for j=1:1:b
        y1(i,j)=x(i,j)*x1(i,j);
    end
end
m1=mean(mean(y1));
for i=1:1:a
    for j=1:1:b
        y2(i,j)=x(i,j)*x1(i,j);
    end
end
m2=mean(mean(y2));
T=0.5*(m1+m2);
disp(y-T);
for i=1:1:a
    for j=1:1:b
        if(x(i,j)>T)
            x3(i,j)=1;
        else
            x3(i,j)=0;
        end
    end
end
figure;
imshow(x3);
title("Theoretical threshold image");
figure;
imshow(x1);
title("Threshold image");
s=std2(x);
M=mean(mean(x));
p=1;
q=1;
for i=1:a
    for j=1:b
        if((x(i,j)>(p*s))&&(x(i,j)>(q*M)))
            r1(i,j)=1;
        else
            r1(i,j)=0;
        end
    end
end
title("Variable threshold image");
figure;
imshow(r1);
T1=adaptthresh(x,0.4);
BW1=imbinarize(x,T1);
BWC=BW1;
figure;
imshow(BW1);
title("Adaptive threshold image");
[counts,y]=imhist(x,16);
stem(y,counts);
Ts=otsuthresh(counts);
BW=imbinarize(x,T2);
figure;
imshow(BW);
title("Binarized image");
figure;
imshowpair(x,BWC,'montage');
imshow(BWC);
