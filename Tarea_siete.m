%TAREA 7 
clear;clc;close all;
%1.	Página 452.ejemplo de aplicación:
%la solucion es resolver la integral de G en [0 2.2]
syms G
f=G;
I=Integracion_trapecio(f,0,2.2,12)
% I=SIMPSON(f,0,2.2,100)
% %IG=Cuadratura_Gauss_Legendre(f,1,2);

%Ejercicio 6.4 página 508 NIEVES
%Primero calculamos el valor de M
% syms x y
% f=exp(-x^2/2-y^2/2);
% h1=0;h2=2*pi;
% I=INTEGRACION_DOBLE(f,0,pi,h1,h2,[x,y])
%M= 1.568157367592134

%Después calculamos el valor Mx
% syms x y
% f=x*exp(-x^2/2-y^2/2);
% h1=0;h2=2*pi;
% I=INTEGRACION_DOBLE(f,0,pi,h1,h2,[x,y])
% Mx=1.251309611928537

%Después calculamos el valor My
% syms x y
% f=y*exp(-x^2/2-y^2/2);
% h1=0;h2=2*pi;
% I=INTEGRACION_DOBLE(f,0,pi,h1,h2,[x,y])
% %My=1.244300828090795


%Ejercicio 6.7 página 514 NIEVES
%la solucion es resolver la integral en [0 pi]
% syms theta 
% f=cos((pi/2)*cos(theta))^2;
% I=1/sin(theta);
% I=Integracion_trapecio(f,0,pi,20)
%I=SIMPSON(f,0,pi,20)
%IG=Cuadratura_Gauss_Legendre3(f,0,pi)
%IG=IG/sin(theta)


% %Ejercicio 6.9 página 519
%para t=4
% t=[0 1 2 3 4 5];
% T=[93.1 85.9 78.8 75.1 69.8 66.7];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(t,T,4)

% %Ejercicio 6.9 página 519
%para t=2,5
% t=[0 1 2 3 4 5];
% T=[93.1 85.9 78.8 75.1 69.8 66.7];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(t,T,2.5)

%Ejercicio 6.18 página 524 NIEVES
%la solucion es resolver la integral en [-pi pi]
% syms x 
% f=sin(x)/x;
% I=SIMPSON(f,-pi,pi,20)
%IG=Cuadratura_Gauss_Legendre3(f,-pi,pi)
%IG=IG/sin(theta)
%I=Integracion_trapecio(f,-pi,pi,20)

% %Ejercicio 6.26 página 525 NIEVES
% %la solucion es resolver la integral en [10 5]
% syms v
% f=10/-v*sqrt(v+0.0001);
% IG=Cuadratura_Gauss_Legendre3(f,10,5)

%Ejercicio 6.27 a) página 525 NIEVES
%la solucion es resolver la integral en [0 inf]
% syms x
% f=exp(-3)*log(x);
% IG=Cuadratura_Gauss_Legendre3(f,0,inf)
%I=Integracion_trapecio(f,0,inf,20)
%I=SIMPSON(f,0,inf,20)

%Ejercicio 6.30 a) página 526 NIEVES
% syms x y
% f=x*exp(x*y);
% h1=1;h2=2;
% I=INTEGRACION_DOBLE(f,0,1,h1,h2,[y,x])

%Ejercicio 6.30 b) página 526 NIEVES
% syms x y
% f=x*exp(x*y);
% h1=0;h2=1;
% I=INTEGRACION_DOBLE(f,1,2,h1,h2,[x,y])

%Ejercicio 6.38 página 528
%Calcule la dp/dV cuando V=1.05 
% V=[1.0 1.1 1.2 1.3];
% P=[30.43853 27.68355 25.38623 23.44122];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(V,P,1.05) 


%Ejercicio 6.40 página 528 NIEVES
%Calcule la d2p/dV cuando x=3.7 
% x=[1 1.8 3 4.2 5 6.5];
% y=[3 4.34536 6.57735 8.88725 10.44721 13.39223];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(x,y,3.7)

%Ejercicio 6.47 página 529 NIEVES
%Calcule la dc/dT para diferentes valores de T 
% T=[10 35 60 85 110];
% C=[12 28 40 46 52];
%[E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,C,20)
%[E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,C,50)
%[E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,C,70)
%[E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,C,90)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Ejercicio 6.49 página 530 NIEVES insiso a)
%Primero Calcule la dD/dC para C=10 cuando T=0
% C=[2 8 16];
% D=[1.0171 1.0703 1.1454];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(C,D,10)
%cuando C=10 la densidad=1.418060714285714 a una T=0

%Después Calcule la dD/dC para C=10 cuando T=20
% C=[2 8 16];
% D=[1.0148 1.0659 1.1386];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(C,D,10)
%cuando C=10 la densidad=1.083585714285714 a una T=20

%Ahora Calcule la dD/dC para C=10 cuando T=40
% C=[2 8 16];
% D=[1.0084 1.0586 1.1301];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(C,D,10)
%cuando C=10 la densidad=1.075985714285714 a una T=40

%finalmente calculamos dD/dT  para T=30 a una C=10
% T=[0 20 40 ];
% D=[1.418060714285714 1.083585714285714 1.075985714285714];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,D,30)
%cuando C=10 y la T=30 la densidad D=1.038926339285714
%la variación es -3.799999999999984e-04

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%otra forma

%Ejercicio 6.49 página 530 NIEVES 

%insiso a)
%primero Calcule la dD/dC para C=10 cuando T=20
% C=[8 16];
% D=[1.0659 1.1386];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(C,D,10)
%cuando C=10 la densidad=1.084075000000000 a una T=20

%Ahora Calcule la dD/dC para C=10 cuando T=40
% C=[8 16];
% D=[1.0586 1.1301];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(C,D,10)
%cuando C=10 la densidad= 1.076475000000000 a una T=40

%finalmente calculamos dD/dT  para T=30 a una C=10
% T=[20 40 ];
% D=[1.084075000000000 1.076475000000000];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,D,30)
%cuando C=10 y la T=30 la densidad D=1.080275000000000
%la variación es -3.799999999999915e-04

%insiso b)
%calculamos dD/dT  para T=0 a una C=40
% T=[-5 0 20];
% D=[0 0 1.3957];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,D,0)

%insiso c)
%primero Calcule la dD/dT para T=30 cuando C=8
% T=[20 40];
% D=[1.0659 1.0586];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,D,30)
%cuando T=30 la densidad=1.062250000000000 a una C=8

%Ahora Calcule la dD/dT para T=30 cuando C=16
% T=[20 40];
% D=[1.1386 1.1301];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(T,D,30)
%cuando T=30 la densidad= 1.134350000000000 a una C=16

%finalmente calculamos dD/dC  para C=10 a una T=30
% C=[8 16];
% D=[1.062250000000000 1.134350000000000];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(C,D,10)
%cuando C=10 y la T=30 la densidad D= 1.080275000000000
%la variación es 0.009012500000000

%insiso d)
%calculamos dD/dC  para T=0 a una C=40
% C=[16 30 40];
% D=[1.1459 1.2922 0];
% [E,Pta,dPta,d2Pta]=diferenciacion_numerica(C,D,40)





