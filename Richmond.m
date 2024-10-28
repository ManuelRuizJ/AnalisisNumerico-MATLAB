function [E,X1,err]=Richmond(F,x0,m,tol)
V=symvar(F);
fd1=diff(F);
fd2=diff(fd1);
for n=1:m
    Fx0=double(subs(F,V,x0));
    fd1x0=double(subs(fd1,V,x0));
    fd2x0=double(subs(fd2,V,x0));
    
    num=2*Fx0*fd1x0;
    den=2*(fd1x0^2)-fd1x0*fd2x0;
    X1=x0-num/den;
    err=X1-x0;
    if err<tol
        break;
    end
    x0=X1;
end
if err<tol
    E='La aproximacion esta dentro de la tolerancia indicada';
else
    E='La aproximacion NO esta dentro de la tolerancia indicada';
end
end