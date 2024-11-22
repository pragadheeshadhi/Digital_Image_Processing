load fisheriris;
X=meas;
Y=species;
Mdl=fitcknn(X,Y,'NumNeighbors',5,'Standardize',1); 
Xnew =[5,3,1.4,0.2];
[label,score,cost]=predict(Mdl,Xnew);
