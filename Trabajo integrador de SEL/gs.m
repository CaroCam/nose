function [x]=gs(A,b,x0,tol)
  %% El siguiente programa resuelve el SEL 
  %% por el método iterativo de Gauss-Seidel.
  [n,n]=size(A);
  x=zeros(n,1);
  erro=999;
  iter=0;
  %% Obtengo la matriz diagonal de A.
  for i=1:n
    D(i,i)=A(i,i);
  endfor
  %% Obtengo la matriz triangular estrictamente inferior.
  Tinf=tril(A,-1);
%% Obtengo la matriz triangular estrictamente superior.
Tsup=triu(A,1);
An=(D+Tinf);
while erro>tol
  bn=b-Tsup*x0;
  %% Aplicamos sustitucion progresiva.
  x(1)=bn(1)/An(1,1);
  for k=2:n
    x(k)=(bn(k)-An(k,1:k-1)*x(1:k-1))/An(k,k);
  endfor
erro=norm((x-x0),1)
x0=x
iter=iter+1
endwhile
endfunction