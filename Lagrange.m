function [P,Pa]=Lagrange(x,y,a)
% Este programa realiza un ajuste polinomial a partir del metodo de
% Lagrange
% x son la variables independientes dadas
% y son las variables dependientes obtenidas experimentalmente.
n=length(x);
P=0;
format long
syms t;
for j=1:n
    nu=1; de=1;
    for i=1:n
        if j~=i
            nu=nu*(t-x(i));
            de=de*(x(j)-x(i));
        end
    end
    Lj=y(j)*(nu/de);
    P=P+Lj;
end
P=sym2poly(P); % Se pasa P a tipo vector
Pa=polyval(P,a); % P(a)
end