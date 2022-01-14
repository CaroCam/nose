function [u]=desplazamientoElas2()
  %% La funcion me da como resultado los valores de los 
  %% desplazamientos elasticos.
  %% Se resuelve el sistema mediante triangulacion superior seguida
  %% de una sustitucion regresiva.
  
  %%Entrada
  
  A=[27580,7004,-7004,0,0;7004,29570,-5253,0,-24320;-7004,-5253,29570,0,0;0,0,0,27580,-7004;0,-24310,0,-7004,29570];
  B=[0;0;0;0;-47000];
  
  %%Proceso
  %%Resolvemos Au=B mediante triangulacion superior seguida de sustitucion regresiva.
  
  u=tSSR(A,B);
  
  %%Salida
  
  disp("Los valores de los desplazamientos elasticos son:");
  
endfunction