I=imread("circuit.tif");
subplot(2,2,1);
imshow(I);
title("Original image");
rotI=imrotate(I,33,'crop');
subplot(2,2,2);
imshow(rotI);
title("Rotated image");
BW=edge(rotI,'canny');
[H,theta,rho]=hough(BW);
subplot(2,2,3);
imshow(imadjust(rescale(H)),[],'XData',theta,'YData',rho,'InitialMagnification','fit');
xlabel("\theta (degrees)");
ylabel("\rho");
title("Hough transform");
axis on;
axis normal;
hold on;
colormap(gca,hot);
P=houghpeaks(H,5,'threshold',cell(0.3*max(H(:))));
x=theta(P(:,2));
y=rho(P(:,1));
plot(x,y,'s','color','black');
lines=houghlines(BW,theta,rho,P,'Fillgap',5,'Minelength',7);
maxlen=0;
for k=1:length(lines)
    xy=[lines(k).point1; lines(k).point2];
    plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
    plot(xy(1,1),xy(1,2),'LineWidth',2,'Color','yellow');
    plot(xy(2,1),xy(2,2),'LineWidth',2,'Color','red');
    len=norm(lines(k).point1 - lines(k).point2);
    if(len>maxlen)
        maxlen=len;
        xylong=xy;
    end
end
plot(xylong(:,1),xylong(:,2),'LineWidth',2,'Color','red');
