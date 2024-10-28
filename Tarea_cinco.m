%Ejercicio 5.14 página 441 LIBRO NIEVES 
%Interpolando con todos los puntos :

%insiso b)  
% T=[40 60 80 100 120 140 160]; % Predictores
% d=[0.63 1.36 2.18 3.00 3.93 6.22 8.59];% Respuestas
% [E,Pt,Pa]=lagrange(T,d,90)


%Ejercicio 5.19 página 442 LIBRO NIEVES 
%Calcular CB cuando t=0.82

T=[0.00 0.10 0.40 0.60 0.80 1.00]; % Predictores
d=[0.00 0.30 0.55 0.80 1.10 1.15];% Respuestas
[E,Pt,Pa]=lagrange(T,d,0.82)