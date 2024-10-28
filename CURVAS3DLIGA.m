function CURVAS3DLIGA(x,y,z,col,a,b,N)

% Este programa grafica la curva con coodenadas cartesianas
%x=x(t);y=y(t);z=z(t). Las funciones deben ser ingresadas en forma Las funciones 
% deben ser ingresadas en forma string
% por ejemplo x='cos(t)'.
% I=[a,b] es el intervalo de variación del parámetro t
% col es color, por ejemplo 'r','m','g','b','y'
% N es el nombre de la curva, por ejemplo 'Espiral'
t=a:0.1:b;

x=strcat({x},'+0*t');% Se agrega +0*t a la cadena x
x=vectorize(x);
x=inline(x,'t');
x=feval(x,t);
y=strcat({y},'+0*t');% Se agrega +0*t a la cadena x
y=vectorize(y);
y=inline(y,'t');
y=feval(y,t);
z=strcat({z},'+0*t');% Se agrega +0*t a la cadena x
z=vectorize(z);
z=inline(z,'t');
z=feval(z,t);
g=plot3(x,y,z);xlabel('x');ylabel('y');zlabel('z');title(N);grid on
set(g,'color',col,'linewidth',2);
 set(gcf,'color','w','MenuBar','none','NumberTitle','off');% Propiedades del margen% rotate3d
 set(gca,'Color','k'); % Propiedades del axis o fondo de la figura
rotate3d