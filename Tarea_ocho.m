%TAREA 8 
%Ejercicio 7.1 página 586 del Nieves
% syms x y
% V=[x y];
% f=x*y^2-2*y+4-4*x;
% Y0=1;
% A=RUNGE_KUTTA4(f,0,2,Y0,V,0.1)

%Ejercicio 7.2 página 587 del Nieves
% syms t a
% V=[t a];
% f=-0.012375*sqrt(a)/(10*a-a^2);
% Y0=4;
% A=RUNGE_KUTTA4(f,0,1000,Y0,V,100)

%Ejercicio 7.3 página 587 del Nieves
% syms t x
% V=[t x];
% f=40-0.2*x;
% Y0=25;
% A=RUNGE_KUTTA4(f,0,50,Y0,V,1)

%Ejercicio 7.5 página 591 del Nieves
syms t Q dQ
V=[t Q dQ];
g=75*sin(5*t)-20*dQ-166.6666*Q;
f=[dQ g];
Y0=[0 0];% condiciones iniciales
A=RUNGE_KUTTA4(f,0,2,Y0,V,0.1)











