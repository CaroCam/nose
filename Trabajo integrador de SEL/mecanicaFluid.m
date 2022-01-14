function [c]=mecanicaFluid()
  %% La funcion me da como resultado los valores de las 
  %% contracciones en cada tanque.
  %% Se resuelve el sistema mediante triangulacion superior seguida
  %% de una sustitucion regresiva.
  
  %%Entrada
  
  A=[8,-4,0,0,0;8,-10,2,0,0;0,6,-11,5,0;0,0,3,-7,4;0,0,0,-2,4];
  B=[80;0;0;0;30];
  
  %%Proceso
  %%Resolvemos Ac=B mediante triangulacion superior seguida de sustitucion regresiva.
  
  c=tSSR(A,B);
  
  %%Salida
  
  disp("Los valores de las contracciones en cada tanque son:");
  
endfunction