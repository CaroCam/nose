function [A]=matrizA()
  %% A es una matriz 5x5
  %% Donde la diagonal esta formada por -2
  %% y 1 en las columnas (i,i+1) y en las fijas (i+1,i).  
  
  A=-2*eye(5);
  
  for i=1:4
    A(i,1+i)=A(1+i,i)=1;
  endfor
  
endfunction   
