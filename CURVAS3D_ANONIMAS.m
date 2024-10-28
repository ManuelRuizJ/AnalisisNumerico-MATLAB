function CURVAS3D_ANONIMAS(x,y,z,I,col,N)
% Este programa grafica la curva con coodenadas cartesianas
%x=x(t);y=y(t);z=z(t). Las funciones deben ser ingresadas en forma anónima
% por ejemplo x=@(t)cos(t).
% I=[a,b] es el intervalo de variación del parámetro t
% col es color, por ejemplo 'r','m','g','b','y'
% N es el nombre de la curva, por ejemplo 'Espiral'
g=fplot3(x,y,z,I);xlabel('x');ylabel('y');zlabel('z');title(N);grid on
set(g,'color',col,'linewidth',2);
set(gcf,'color','w','MenuBar','none','NumberTitle','off');% Propiedades del margen% rotate3d
set(gca,'Color','k'); % Propiedades del axis o fondo de la figura
rotate3d

