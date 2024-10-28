function A=Runge_Kutta_4(f,a,b,h,y0,V)
% Este programa resuleve un sistema de ecuaciones diferenciales de primer
% orden por el método de Runge Kutta orden cuatro
% f=[f1,f2,...,fn]; es un vector renglon de las funciones del sistema
% [a,b] es el intervalo en donde varía el tiempo
% h es el tamaño de paso de la discretisación del intervalo [a b]
% y0 es un vector renglon de condiciones inciales
% V={t,y1,yn};

t=a:h:b; % Crea un vector renglon en el intervalo [a b] 
N=length(t); % Número de sub-intervalo en la discretisación del intervalo [a b]
n=length(y0);
Y=zeros(N,n);
Y(1,:)=y0;

for i=1:N-1
    G1=h*f(t(i),Y(i,:));
    G2=h*f(t(i)+h/2,Y(i,:)+G1/2);
    G3=h*f(t(i)+h/2,Y(i,:)+G2/2);
    G4=h*f(t(i)+h,Y(i,:)+G3);
    Y(i+1,:)=Y(i,:)+(G1+2*G2+2*G3+G4)/6;
end
A=[t',Y];
A=num2cell(A);
A=cell2table(A,'variablenames',V);

% Gr�ficas
if n==1
    plot(t',Y(:,1),'color','b','LineWidth',3);
    xlabel(V{1});
    ylabel(V{2});
    title('Tabla de respuestas')
elseif n==2
    plot(t',Y(:,1),'-b',t',Y(:,2),'-r');
    xlabel(V{1});
    %ylabel([V{2},' ',V{3}]);
    legend(V{2},V{3});
    title('Tabla de respuestas')
elseif n==3
    plot(t',Y(:,1),'-c',t',Y(:,2),'-m',t',Y(:,3),'-r');
    xlabel(V{1});
    ylabel([V{2},V{3},V{4}]);
    legend(V{2},V{3},V{4});
    title('Tabla de respuestas')
end

