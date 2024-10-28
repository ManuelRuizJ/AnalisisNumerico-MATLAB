function CURVAS2DLIGA_EXPLICITAS2(y,colorcurva,colormargen,colorfondo,a,b)

% Este programa grafica explí­cita y=f(x)
% Las función debe ser ingresada en forma de string
% por ejemplo y='cos(x)'.
% I=[a,b] es el intervalo de variación del parámetro x
% colorcurva es el color de la curva, por ejemplo 'r','m','g','b','y'. También se puede usar
% formato RGB
% colormargen es el color del marco, por ejemplo 'r','m','g','b','y'. También se puede usar
% formato RGB
% colorfondo es el color del fondo de la ventana,
% por ejemplo 'r','m','g','b','y'. También se puede usar
% formato RGB
% También la función y puede ser de tipo m o anónima. Por ejemplo
% f='@mifuncion', si es de tipo m, y f='@(x)x.^2' si es de tipo anónima.
y0=y;
X=a:0.01:b;
if strcmp(y(1),'@')==0 % Se compara el primer caracter de y con el
% caracter @. Esto significa que la función y no es una función de tipo m o
% anónima.

% NOTA. TODA FUNCIÓN EN LA FORMA QUE SE INGRESE DEBE SER INGRESADA EN FORMA
% VECTORIZADA (DONDE LE TOQUE). POR EJEMPLO f='ones(1,4)*[x.^2; x; sin(x); x-1]'
x=symvar(y);% Arreglo de celdas x={'x'}
if isempty(x)==0
%y=strcat({y});% Se agrega +0*x a la cadena y
%y=vectorize(y); %Opción no recomendada
y=inline(y,x{1});%inline(y,'x')
y=feval(y,X);
g=plot(X,y);xlabel('x');ylabel('y');title(y0);grid on
set(g,'color',colorcurva,'linewidth',2);
set(gcf,'color',colormargen,'NumberTitle','off');% Propiedades del margen% rotate3d
%set(gcf,'color',colormargen,'MenuBar','none','NumberTitle','off');% Propiedades del margen% rotate3d
set(gca,'color',colorfondo); % Propiedades del axis o fondo de la figura
rotate3d
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
% xlim([a,b]); %opcional
% ylim([a,b]);% opcional
else
%y=vectorize(y); %Opción no recomendada   
y=inline(y,'x');
y=feval(y,X);
y=ones(1,length(X))*y;
g=plot(X,y);xlabel('x');ylabel('y');title(y0);grid on
set(g,'color',colorcurva,'linewidth',2);
set(gcf,'color',colormargen,'NumberTitle','off');% Propiedades del margen% rotate3d
%set(gcf,'color',colormargen,'MenuBar','none','NumberTitle','off');% Propiedades del margen% rotate3d
set(gca,'color',colorfondo); % Propiedades del axis o fondo de la figura
rotate3d
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
% xlim([a,b]); %opcional
% ylim([a,b]);% opcional
end
else
%y=vectorize(y);
y=str2func(y); % Se pasa el string a function. Esto sólo se puede hacer de string
% con nombres de funciones predefinidas o con nombres de funciones de tipo
% m
 y=feval(y,X);
if length(y)>1 %si y no es una función constante 
g=plot(X,y);xlabel('x');ylabel('y');title(y0);grid on
set(g,'color',colorcurva,'linewidth',2);
set(gcf,'color',colormargen,'NumberTitle','off');% Propiedades del margen% rotate3d
% %set(gcf,'color',colormargen,'MenuBar','none','NumberTitle','off');% Propiedades del margen% rotate3d
set(gca,'color',colorfondo); % Propiedades del axis o fondo de la figura
rotate3d
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
% xlim([a,b]); %opcional
% ylim([a,b]);% opcional
else % Si y es una función constante
 y=ones(1,length(X))*y; % Si y es una función constante de tipo m o anónima feval(y,X)
 % sólo es el valor de la constante, por ello hay que definir
 % y=ones(1,length(X))*y un vector de constantes, con el valor de la
 % costante y.
g=plot(X,y);xlabel('x');ylabel('y');title(y0);grid on
set(g,'color',colorcurva,'linewidth',2);
set(gcf,'color',colormargen,'NumberTitle','off');% Propiedades del margen% rotate3d
% %set(gcf,'color',colormargen,'MenuBar','none','NumberTitle','off');% Propiedades del margen% rotate3d
set(gca,'color',colorfondo); % Propiedades del axis o fondo de la figura
rotate3d
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
% xlim([a,b]); %opcional
% ylim([a,b]);% opcional
end
end