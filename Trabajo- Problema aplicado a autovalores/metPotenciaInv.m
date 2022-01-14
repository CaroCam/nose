function [alfa,x]=metPotenciaInv(A,x0,tol)
  %% Funcion que encuentra los autovalores de un sistema
  %% mediante el metodo de la potencia inversa utilizando
  %% la funcion de triangulacion superior seguida de 
  %%sustitucion regresiva ocupada en SEL.
  
  %% Entrada
  
  alfa=0;
  erro=1;
  x0n=x0/norm1(x0,1);
  x1=tSSR(A,x0n);
  alfa=x1./x0n;
  erro=max(abs(alfa))-min(abs(alfa));
  
  %% Encontramos el valor adecuado del autovalor asociado
  %% asociado al sistema.
  
  while erro>tol
    x0=x1;
    x0n=x0/norm1(x0,1);
    x1=tSSR(A,x0n);
    alfa=x1./x0n
    erro=max(abs(alfa))-min(abs(alfa));
  endwhile
  
  %% Salida
  x=x1/norm(x1,1);
  alfa=1/(alfa(1));
  
endfunction