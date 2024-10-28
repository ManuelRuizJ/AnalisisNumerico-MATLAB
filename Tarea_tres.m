clear all; clc
% Ejercicio 1, 3.31 página 201 libro NIEVES
%El sistema se iguala a cero para definir las funciones:
syms x1 x2 x3
f1=3*x1-2*x2-1;
f2=x1+5*x2-0.2*x3-5.8;
f3=4*x2+7*x3-11;
F=[f1 f2 f3]; %Vector renglón
X0=[0.9899 0.9848 1.071]; %Vector inicial
[C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,100)

% F1=@(x,y,z)3.*x-2.*y-1;
% F2=@(x,y,z)x+5.*y-0.2.*z-5.8;
% F3=@(x,y,z)4.*y+7.*z-11;
% graficasimplicitas3d(-2,2,F1,F2,F3)


%Ejemplo 3.39 página 234 libro Nieves
% clear; clc; close all;
% % A=[4 -1 0 0;-1 4 -1 0;0 -1 4 -1;0 0 -1 4];b=[1 1 1 1]';
% % [C,X1,err]=JACOBI(A,b,[0 2 0 7],10e-6,12)
% % [C,X1,err]=GAUSS_SEIDEL(A,b,[3.4 -4 0 0],10e-6,10)

% %Ejemplo 3.1 página 254 libro Nieves
% clear; clc; close all;
% A=[0 0 0 -12 512;0 0 12 -512 500;0 12 -512 500 0;12 -512 500 0 0;512 -500 0 0 0];b=[0 0 0 0 9]';
% % [C,X1,err]=JACOBI(A,b,[0 2 0 7 0],10e-6,12)
%  X0=[0.018 0.000432 0.00001037 0.00000024869 0.0000000058286];
% [C,X1,err]=GAUSS_SEIDEL(A,b,[0.018 0.000432 0.00001037 0.00000024869 0.0000000058286],10e-1,3000)

%Ejemplo 3.2 página 256 libro Nieves
%  clear; clc; close all;
% A=[3/4 24/25 -1 0 0 0;4/5 -7/25 0 0 0 0;-3/5 0 0 5/13 0 0;-4/5 0 0 -12/13 1 0;0 -24/25 0 -5/13 0 15/17;0 7/25 0 12/13 0 8/17];b=[0 0 0 0 0 98.1]';
% %[C,X1,err]=JACOBI(A,b,[0 2 0 7 0],10e-6,12)
% [C,X1,err]=GAUSS_SEIDEL(A,b,[24.4 69.7 81.5 38.0 54.6 82.4],10e6,8000)

% %Ejemplo 3.3 página 258 libro Nieves
% clear; clc; close all;
%  A=[98 9 2 1 0.5;11 118 9 4 0.88;27 27 85 8 2;1 3 17 142 25;2 4 7 17 118];b=[0.1100 0.2235 0.2800 0.3000 0.1400]';
% % % [C,X1,err]=JACOBI(A,b,[0 2 0 7 0],10e-6,12)
% [C,X1,err]=GAUSS_SEIDEL(A,b,[0.1 0.1 0.1 0.1 0.1],10e6,10)

% %Ejemplo 3.5 página 261 libro Nieves
% clear; clc; close all;
% A=[0.83 0 0.55;0 0.61 0.24;0.17 0.39 0.21;];b=[58 21 21]';
% % % [C,X1,err]=JACOBI(A,b,[0 2 0 7 0],10e-6,12)
% [C,X1,err]=GAUSS_SEIDEL(A,b,[19 4.2 78],10e3,600)


