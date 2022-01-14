function [P]=minCargaP()
  %% Esta funcion encuentra el valor minimo de carga P que logra el colapso.
  %% Se resuelve utilizando el metodo de la potencia inversa.
  %% Donde se considera un vector inicial y una tolerancia como datos.
  
  %%Entrada
  
  A=matrizA;
  x0=ones(5,1);
  tol=1E-10;
  [alfa]=metPotenciaInv(A,x0,tol);
  lanmda=alfa;
  
  %% Salida
  disp("El valor minimo de carga es:")
  P=lanmda/(-2E-6);
  endfunction