clc;
clear all; close all;
I=imread("fDUGQ.jpg"); 
I=rgb2gray(I)
imshow(I); 
title('Synthetic Image');
i=I>100;
figure;
imshow(i);
stats=regionprops('table',i,'Cent roid','MajorAxisLength','MinorAxisLength');
centers=stats.Centroid; 
diameters=mean([stats.MajorAxisLength stats.MinorAxisLength],2); 
radii=diameters/2;
hold on 
viscircles(centers,radii);
hold off

i=imread("fDUGQ.jpg"); 
i=rgb2gray(i);
i=i>100;
imshow(i);
glcm=graycomatrix(i,'Offset',[3 0;0 2]);
stats=graycoprops(glcm,{'contrast ','homogeneity','Energy','C orrelation'});
