function [norma1]=norm1(x)
  %% calculo de la norma 1 de un vector.
  sum1=abs(x(1));
  for i=2:length(x)
    sum1=sum1+abs(x(i));
  endfor
norma1=sum1;
endfunction