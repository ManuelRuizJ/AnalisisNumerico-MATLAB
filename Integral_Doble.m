function I = Integral_Doble(f,a,b,g1,g2)
% Este programa realiza la integral doble, mediante el método de la
% Cuadratura de Gauss-Legendre.
% f es la función "f(x,y)"
% a y b son los limites del x, donde a<x<b
% g1 y g2 es el intervalo, donde g1(x)<y<g2(x)
x=[0.9602898565 -0.9602898565 0.7966664774 -0.7966664774 0.5255324099 -0.5255324099 0.1834346425 -0.1834346425];
w=[0.1012285363 0.1012285363 0.2223810345 0.2223810345 0.3137066459 0.3137066459 0.3626837834 0.3626837834];

t1 = (b-a)/2;
t2 = (b+a)/2;
M = 0;
for i=1:8
    agr =t2+t1*x(i);
    
    ki = (g2(agr)-g1(agr))/2;
    si = (g2(agr)+g1(agr))/2;
    N = 0;
    for j=1:8
        N = N+w(j)*f(agr, si+ki*x(j));
    end
    M = M+w(i)*ki*N;
end
I = t1*M;
end

