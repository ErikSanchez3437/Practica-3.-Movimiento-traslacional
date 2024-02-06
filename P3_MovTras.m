function dx=P3_MovTras(t,x)
%----Definicion de Parámetros---------
b1=1000;
m1=290;
m2=59;
k1=16182;
k2=19000; 
f=0;
z1=0.05*sin(0.5*pi*t);
z2=0.05*sin(20*pi*t);
%---Definicion de Matrices---
A=[0 0 1 0 ; 0 0 0 1 ; -k1/m1 k1/m1 -b1/m1 b1/m1; k1/m2 -(k1+k2)/m2 b1/m2 -b1/m2]; 
B=[0 0 ; 0 0 ; 1/m1 0 ; -1/m2 k2/m2];

dx=zeros(4,1);
dx(1:4)=A*(x(1:4))+B*([f;z1]);
end
%b1=1000; m1=290; m2=59; k1=16182; k2=19000; f=0;