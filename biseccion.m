function c=biseccion(f,a,b,tol) 
error=1;
a0=a;
b0=b;
while error>tol
    c=(a+b)/2; %Punto medio
    if f(a)*f(c)<=0
        b=c; % [a,c]
        error=abs(c-a); % Calculando error
    else
        a=c; % [c,b]
        error=abs(b-c);
    end
end
fplot(f,[a0 b0],'r','LineWidth',1.5)
title('Método Bisección')
xlabel('x')
ylabel('y')
grid on
