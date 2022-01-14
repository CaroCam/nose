function [x,alfa]=autoVyV(A,x0,tol)
  alfa=0;
  erro=1;
  x0n=x0/norm(x0,1);
  x1=inv(A)*x0n;
  alfa=x1./x0n;
  erro=max(abs(alfa))-min(abs(alfa));
  while erro>tol
    x0=x1;
    x0n=x0/norm(x0,1);
    x1=inv(A)*x0n;
    alfa=x1./x0n
    erro=max(abs(alfa))-min(abs(alfa));
endwhile
 x=x1/norm(x1,1);
  alfa=1/(max(abs(alfa)));
endfunction
  
  