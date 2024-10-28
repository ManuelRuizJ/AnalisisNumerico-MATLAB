function CURVAS2DLIGA_EXPLICITAS(y,colorcurva,colormargen,colorfondo,a,b)

% Este programa grafica expl�cita y=f(x)
% Las funci�n debe ser ingresada en forma de string
% por ejemplo y='cos(x)'.
% I=[a,b] es el intervalo de variaci�n del par�metro x
% colorcurva es el color de la curva, por ejemplo 'r','m','g','b','y'. Tambi�n se puede usar
% formato RGB
% colormargen es el color del marco, por ejemplo 'r','m','g','b','y'. Tambi�n se puede usar
% formato RGB
% colorfondo es el color del fondo de la ventana,
% por ejemplo 'r','m','g','b','y'. Tambi�n se puede usar
% formato RGB
% Tambi�n la funci�n y puede ser de tipo m o an�nima. Por ejemplo
% f='@mifuncion', si es de tipo m, y f='@(x)x.^2' si es de tipo an�nima.
N=y;
X=a:0.01:b;
if strcmp(y(1),'@')==0 % Se compara el primer caracter de y con el
% caracter @. Esto significa que la funci�n y no es una funci�n de tipo m o
% an�nima.
% NOTA. CUANDO SE INGRESEN LOS DATOS EN FORMA DE LIGA NO ES NECESARIO
% INTRODUCIR PUNTOS ANTES DE PRODUCTOS, DIVISIONES  Y POTENCIAS DE
% VECTORES. SIN EMBARGO HAY QUE TENER CUIDADO POR QUE SI COMPILAMOS
% f='ones(1,4)*[x.^2; x; sin(x); x-1]' SALDR� UN ERROR. POR TAL MOTIVO ESTE
% PROGRAMA ES S�LO PR�CTICO PARA FUNCIONES ELEMENTALES NO COMPLICADAS. EL
% PROGRAMA QUE RESUELVE ESTE TIPO DE PROBLEMAS ES
% CURVAS2DLIGA_EXPLICITAS2(y,colorcurva,colormargen,colorfondo,a,b,N)
% NOTA. TODA FUNCI�N EN LA FORMA QUE SE INGRESE DEBE SER INGRESADA EN FORMA
% VECTORIZADA (DONDE LE TOQUE). POR EJEMPLO f='ones(1,4)*[x.^2; x; sin(x); x-1]'

x=symvar(y);% Arreglo de celdas x={'x'}
if isempty(x)==0
%y=strcat({y});% Se agrega +0*x a la cadena y
y=vectorize(y); %Opci�n no recomendada
y=inline(y,x{1});%inline(y,'x')
y=feval(y,X);
g=plot(X,y);xlabel('x');ylabel('y');title(N);grid on
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
y=vectorize(y); %Opci�n no recomendada   
y=inline(y,'x');
y=feval(y,X);
y=ones(1,length(X))*y;
g=plot(X,y);xlabel('x');ylabel('y');title(N);grid on
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
y=vectorize(y);
y=str2func(y); % Se pasa el string a function. Esto s�lo se puede hacer de string
% con nombres de funciones predefinidas o con nombres de funciones de tipo
% m
 y=feval(y,X);
if length(y)>1 %si y no es una funci�n constante 
g=plot(X,y);xlabel('x');ylabel('y');title(N);grid on
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
else % Si y es una funci�n constante
 y=ones(1,length(X))*y; % Si y es una funci�n constante de tipo m o an�nima feval(y,X)
 % s�lo es el valor de la constante, por ello hay que definir
 % y=ones(1,length(X))*y un vector de constantes, con el valor de la
 % costante y.
g=plot(X,y);xlabel('x');ylabel('y');title(N);grid on
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

