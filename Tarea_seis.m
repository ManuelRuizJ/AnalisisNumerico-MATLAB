%TAREA 6. Pag. 362, 4.18 libro NIEVES
% %Ejercicio 4.18 página 362 de Nieves
% F=[0 1 2 3 5 7 10 15 20];% Predictores
% L=[92.0 85.3 79.5 74.5 67.0 60.5 53.5 45.0 39.5];% Respuestas
% [C,m,b,y0]=minimos_cuadrados_recta(F,L,4)
%---------------------------------------------------------------------
% Ejercicio 4.19  página 362 de Nieves
% x=[0 1 2 3 4];
% y=[44.4 54.6 63.8 65.7 68.9];
% X=0.5.^x;Y=y;
% [a1,a0]=minimos_cuadrados_recta2(X,Y);
% a=a0
% b=-a1
%-------------------------------------------------------------------
% Ejercicio 5.3  página 426 de Nieves
%Interpolando con todos los puntos :

%insiso a)  
%T=[10 30 60 100]; % Predictores
%d=[1.3103 1.2953 1.2732 1.2446];% Respuestas
%[E,Pt,Pa]=lagrange(T,d,15)
    
    
% Interpolando con  los puntos 1 y 2:
   
% T=[10 30 ]; % Predictores
% d=[1.3103 1.2953];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,15)
%densidad=1.306550000000000
     
%insiso b)
% T=[5 20 40 70]; % Predictores
% d=[1.0281 1.1335 1.2953 1.6014];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,50) 
 
% T=[40 70]; % Predictores
% d=[1.2953 1.6014];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,50) 
%densidad=1.397333333333333


%insiso c)
%primero interpolamos para calcular la densidad a 30°C y 60% concentracion
%T=[40 70]; % Predictores
%d=[1.2953 1.6014];% Respuestas
%[E,Pt,Pa]=lagrange(T,d,60) 
%densidad  1.499366666666667

%despues interpolamos para calcular la densidad a 60°C y 60% concentracion
%T=[40 70]; % Predictores
%d=[1.2732 1.5753];% Respuestas
%[E,Pt,Pa]=lagrange(T,d,60) 
%densidad 1.474600000000000  
 
% una vez conocidos los valores de la densidad a 30°C y 60°C,
% interpolamos para conocer la densidad a 50°C.
% T=[30 60]; % Predictores
% d=[1.499366666666667 1.474600000000000];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,50) 
%densidad 1.482855555555556

%insiso d)
%primero interpolamos para calcular la densidad a 30% y 10°C
% T=[20 40]; % Predictores
% d=[1.1453 1.3103];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,30) 
%densidad 1.227800000000000

%despues interpolamos para calcular la densidad  a 30% y 30°C
% T=[20 40]; % Predictores
% d=[1.1335 1.2953];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,30) 
%densidad 1.214400000000000
 
%una vez conocidos los valores de la densidad  a 10° y 30°C a 30%
%interpolamos para conocer la temperatura a la densidad 1.215
% T=[1.227800000000000 1.214400000000000]; % Predictores
% d=[10 30];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,1.215) 
% %Temperatura 29.104477611940073
%--------------------------------------------------------------------

% Ejercicio 5.8 página 433 de Nieves
% V=[3.83 4.17 4.97 6.06 6.71 7.17 7.51 7.98 8.67 9.39 9.89];
% dP=[30 35.5 50.5 75 92 105 115 130 153.5 180 199.5];
% X=log(dP);Y=log(V);
% [a1,a0]=minimos_cuadrados_recta2(X,Y);
% a=exp(a0)
% b=a1
%--------------------------------------------------------------------

% Ejercicio 5.29 página 446 de Nieves
% P=[14.70 17.53 20.80 24.54 28.83 33.71 39.25 45.49 52.52];
% v=[26.43 22.40 19.08 16.32 14.04 12.12 10.51 9.15 8.00];
% X=log(v);Y=log(P);
% [a1,a0]=minimos_cuadrados_recta2(X,Y);
% a=exp(a0)
% b=a1
%-------------------------------------------------------------------

%Ejercicio 5.30 página 446 de Nieves
% F=[10.50 29.49 42.70 60.01 75.51 91.05];% Predictores
% L=[10.421 10.939 11.321 11.794 12.242 12.668];% Respuestas
% [C,m,b,y0]=minimos_cuadrados_recta(F,L,11)

%otra forma 
%Ejercicio 5.30 página 446 de Nieves
% T=[10.50 29.49 42.70 60.01 75.51 91.05 ];
% CP=[10.421 10.939 11.321 11.794 12.242 12.668];
% [C,Px0]=minimoscuadradospolinomio2(T,CP,11,2)
% %------------------------------------------------------

%Ejercicio 5.31 página 446 Nieves
x=[2 4 6 12 18 24];
y=[1.07 1.88 2.26 2.78 2.97 2.99];
X=exp(a*x);Y=y;
[a1,a0]=minimos_cuadrados_recta2(X,Y);
a=log(x)/x
a1=-3
a0=3
