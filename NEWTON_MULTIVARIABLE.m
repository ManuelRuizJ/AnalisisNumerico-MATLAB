function [E,X1,err]=NEWTON_MULTIVARIABLE(F,X0,m,tol)
% Este programa resuelve un sistema no lineal de n ecuaciones con n
% incognitas 
% X0 es un punto inicial dado como vector columna de nx1
% m es el numero maximo de interacciones del algoritmo
% tol es la tolerancia del error absoluto
% F=[f1,...,fn]'; % vector columna de funciones que representan al sistema.
% Cada funcion debe ser de tipo simbolico
V=symvar(F); % [x1,x2,...,xn]

J=jacobian(F,V); % matriz jacobiana
for k=1:m
    FX0=double(subs(F,V,X0)); % F(X0)
    FX0=FX0';
    JX0=double(subs(J,V,X0)); % es la matriz jacobiana evaluada en X0
    X1=X0'-JX0\FX0;
    err=norm(X1'-X0); %error absoluto
    if err<tol
        break;
    end
    X0=X1';
end
if err<tol
    E='La aproximacion esta dentro de la tolerancia indicada';
else
    E='La aproximacion NO esta dentro de la tolerancia indicada';
end


    
    