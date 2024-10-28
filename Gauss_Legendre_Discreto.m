function I=Gauss_Legendre_Disc(x,y)
% Este programa integra de manera discreta los valores dados
% x son los valores de los predictores
% y son los valores predichos por la función
xi=[0.9602898565 -0.9602898565 0.7966664774 -0.7966664774 0.5255324099 -0.5255324099 0.1834346425 -0.1834346425];
wi=[0.1012285363 0.1012285363 0.2223810345 0.2223810345 0.3137066459 0.3137066459 0.3626837834 0.3626837834];

a=min(x);
b=max(x);

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

h1=(b-a)/2;
h2=(a+b)/2;
I=0;
for k=1:8
    m=h2+h1*xi(k);
    r=double(subs(P,m));
    s=wi(k)*r;
    I=s+I;
end
I=h1*I;

% Gráfica
fplot(P,[a b],'-r','LineWidth',3);
xlabel('X');
ylabel('Y');
title('Gráfica');
end
