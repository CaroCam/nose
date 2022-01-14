function [x,iter]=jacobi(A,b,x0,tol)
  %% El siguiente programa resuelve el SEL por el método iterativo de Jacobi.
  
  %%Entrada
  [N,N]=size(A);
  for i=1:N;
    D(i,i)=A(i,i);
    Dinv(i,i)=1/A(i,i);
  endfor
R=A-D;
c=Dinv*b;
T=-Dinv*R;
errort=999;
iter=0;
while errort>tol
  x=c+T*x0;
  errort=norm((x-x0),1);
  
  x0=x
  iter=iter+1
endwhile
endfunction