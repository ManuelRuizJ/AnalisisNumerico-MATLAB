function CURVAS3DMOV(x,y,z,a,b,N)
% Este programa grafica la curva con coodenadas cartesianas
%x=x(t);y=y(t);z=z(t). Las funciones deben ser ingresadas en forma string
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
comet3(x,y,z,0.8);xlabel('x');ylabel('y');zlabel('z');title(N);grid on
 %set(g,'color','m','linewidth',3);
% axis 'tight' ;% OPTATIVO
% shading interp
% colormap flag% Aquí­ puede ir: copper, gray, hot, bone, pink, hsv, parula, flag. En lugar
% % de estasentencia puede ir la sentencia:
% %set(g,'Facecolor','r','EdgeColor','none'); % Color de la superficie
% lightangle( 60 ,45 ); % FUENTE DE LUZ CON AZIMUT 60 GRADOS Y UNA ALTURA DE 45 GRADOS
% set(g,'Facecolor','r','EdgeColor','none'); % Color de la superficie
 set(gca,'Color','k'); % Propiedades del axis o fondo de la figura
 set(gcf,'color','w','MenuBar','none','NumberTitle','off');% Propiedades del margen% rotate3d
rotate3d
