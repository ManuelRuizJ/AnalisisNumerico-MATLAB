%Resuelva los siguientes sistemas de ecuaciones no lineales

clear all; clc

% Ejercicio 1(d) página 617 libro Burden
%El sistema se iguala a cero para definir las funciones:
% syms x1 x2 x3
% f1=x1^2+x2-37;
% f2=x1-x2^2-5;
% f3=x1+x2+x3-3;
% F=[f1 f2 f3]; %Vector renglón
% X0=[1.181 0.5556 1.263]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% F1=@(x,y,z)x.^2+y-37;
% F2=@(x,y,z)x-y.^2-5;
% F3=@(x,y,z)x+y+z-3;
% graficasimplicitas3d(-5,5,F1,F2,F3)

% Ejercicio 2(a) página 617 libro Burden
% El sistema se iguala a cero para definir las funciones:
% syms x1 x2 
% f1=x1*(1-x2)+4*x2-12;
% f2=(x1-2)^2+(2*x2-3)^2-25;
% F=[f1 f2]; %Vector renglón
% X0=[0.6 4]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% F1=@(x,y,z)x.*(1-y)+4.*y-12;
% F2=@(x,y,z)(x-2).^2+(2.*y-3).^2-25;
% graficasimplicitas3d_2(-5,5,F1,F2)

%Ejercicio 2(d) página 617 libro Burden
%El sistema se iguala a cero para definir las funciones:
% syms x1 x2 x3 
% f1=10*x1-2*x2^2+x2-2*x3-5;
% f2=8*x2^2+4*x3^2-9;
% f3=8*x2*x3+4;
% F=[f1 f2 f3]; %Vector renglón
% X0=[5 0 -5]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% F1=@(x,y,z)10.*x-2.*y^2+y-2.*z-5;
% F2=@(x,y,z)8.*y^2+4.*z^2-9;
% F3=@(x,y,z)8.*y*z+4;
% graficasimplicitas3d(-10,10,F1,F2,F3)

% Ejercicio 4(a) página 627 libro Burden
% El sistema se iguala a cero para definir las funciones:
% syms x1 x2 
% f1=x1*(1-x1)+4*x2-12;
% f2=(x1-2)^2+(2*x2-3)^2-25;
% F=[f1 f2]; %Vector renglón
% X0=[-5 5]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% Ejercicio 4(b) página 627 libro Burden
% El sistema se iguala a cero para definir las funciones:
% syms x1 x2 
% f1=5*x1^2-x2^2;
% f2=x2-0.25*(sin(x1)+cos(x2));
% F=[f1 f2]; %Vector renglón
% X0=[-5 5]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% %Ejercicio 4(c) página 627 libro Burden
% %El sistema se iguala a cero para definir las funciones:
syms x1 x2 x3 
f1=15*x1+x2^2-4*x3-13;
f2=x1^2+10*x2-x3-11;
f3=x2^3-25*x3+22;
F=[f1 f2 f3]; %Vector renglón
X0=[1.027 1.11 0.9091]; %Vector inicial
[C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% F1=@(x,y,z)15.*x+y.^2-4.*z-13;
% F2=@(x,y,z)x.^2+10.*y-z-11;
% F3=@(x,y,z)y.^3-25.*z+22;
% graficasimplicitas3d(-10,10,F1,F2,F3)

%Ejercicio 4(d) página 627 libro Burden
%El sistema se iguala a cero para definir las funciones:
% syms x1 x2 x3 
% f1=10*x1-2*x2^2+x2-2*x3-5;
% f2=8*x2^2+4*x3^2-9;
% f3=8*x2*x3+4;
% F=[f1 f2 f3]; %Vector renglón
% X0=[5 0 -5]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% F1=@(x,y,z)15.*x+y.^2-4.*z-13;
% F2=@(x,y,z)x.^2+10.*y-z-11;
% F3=@(x,y,z)y.^3-25.*z+22;
% graficasimplicitas3d(-10,10,F1,F2,F3)

%Ejercicio 3.	Página 359:4.1 del libro Nieves.
%AU=[1 1 -1 0;1 -1 0 -1]
% syms x1 x2 
% f1=x1^2+x2^2-x1;
% f2=x1^2+x2^2-x2;
% F=[f1 f2]; %Vector renglón
% X0=[0.05 -0.005]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10)

% F1=@(x,y,z)x.^2+y.^2-x;
% F2=@(x,y,z)x.^2+y.^2-y;
% graficasimplicitas3d_2(-5,5,F1,F2)

%Ejercicio 3.	Página 359:4.3 del libro Nieves.
%El sistema se iguala a cero para definir las funciones:
% syms x1 x2 x3 x4 x5 x6
% f1=x1*x2+x6*x4-18;
% f2=x2+x5+x6-12;
% f3=x1+log(x2/x4)-3;
% f4=x3^2+x3-2;
% f5=x2+x4-4;
% f6=x3*(x3+6)-7;
% F=[f1 f2 f3 f4 f5 f6]; %Vector renglón
% x0=[5 0 -5 0 6 7]; %Vector inicial
% %[C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-8,15);
% VAR=symvar(F)
% X1=vpasolve(F,VAR,x0)

%Ejercicio 3.	Página 359:4.2 del libro Nieves.
%El sistema se iguala a cero para definir las funciones:
% syms x1 x2 x3 x4 x5 x6
% f1=x1*x2+x6*x4-18;
% f2=x2+x5+x5-12;
% f3=x1+log(x2/x4)-3;
% f4=x3^2+x3-2;
% f5=x2+x4-4;
% f6=x3*(x3+6)-7;
% F=[f1 f2 f3 f4 f5 f6]; %Vector renglón
% X0=[1.11 1.067 0.9091 0 0 0]; %Vector inicial
% [C,X1,FX1,err]=sistemas_no_lineales_newton(F,X0,10e-6,10);



