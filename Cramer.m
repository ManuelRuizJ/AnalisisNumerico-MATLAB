function X=Cramer(A,b)
% Este programa resuelve el SL Ax=b
% A es una matriz cuadrada de nxn, b es una matriz columna de nx1
d=det(A);
if d==0
    X='El método de Cramer no aplica';
    return
else
    n=length(b); % longitud de b
    X=zeros(n,1); % vector columna de ceros (donde se guardan los datos)
    for j=1:n
        Aj=A;
        Aj(:,j)=b; % Se calcula Aj
        dj=det(Aj);
        X(j)=dj/d;
    end
end
% Gráfica
if n==2
    f1=@(x,y) A(1,1)*x + A(1,2)*y-b(1);
    f2=@(x,y) A(2,1)*x + A(2,2)*y-b(2);
    
    fimplicit(f1,[X(1)-5,X(1)+5,X(2)-5,X(2)+5],'color','m','linewidth',3);
    hold on
    fimplicit(f2,[X(1)-5,X(1)+5,X(2)-5,X(2)+5],'color','g','linewidth',3);
    hold off
    legend('*','**');
end
end