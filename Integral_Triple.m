function I = Integral_Triple(f,a,b,g1,g2,h1,h2)
% Este programa realiza la integral doble, mediante el método de la
% Cuadratura de Gauss-Legendre.
% f es la función "f(x,y,z)"
% a y b son los limites del x, donde a<x<b
% g1 y g2 es el intervalo, donde g1(x)<y<g2(x)
% h1 y h2 es el intervalo, donde h1(x,y)<z<h2(x,y)
x=[0.9602898565 -0.9602898565 0.7966664774 -0.7966664774 0.5255324099 -0.5255324099 0.1834346425 -0.1834346425];
w=[0.1012285363 0.1012285363 0.2223810345 0.2223810345 0.3137066459 0.3137066459 0.3626837834 0.3626837834];

t1 = (b-a)/2;
t2 = (b+a)/2;

M = 0;
for i=1:8
    agr1 = t2+t1*x(i);
    k1 = (g2(agr1)-g1(agr1))/2;
    k2 = (g2(agr1)+g1(agr1))/2;
    
    O = 0;
    for j=1:8
        agr2 = k2+k1*x(j);
        s1 = (h2(agr1,agr2)-h1(agr1,agr2))/2;
        s2 = (h2(agr1,agr2)+h1(agr1,agr2))/2;
        
        P = 0;
        for k=1:8
            P = P + w(k)*f(agr1, agr2, s2+s1*x(k));
        end
        O = O + w(j)*s1*P;
    end
    M = M + w(i)*k1*O;
end
I = t1*M;
end