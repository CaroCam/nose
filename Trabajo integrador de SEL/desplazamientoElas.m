function [x]=desplazamientoElas(m,k)
  %% La funcion me da como resultado los valores de los 
  %% desplazamientos elasticos.
  %% - k es la constante del resorte.
  %% - m es la masa del resorte.
  %% Se resuelve el sistema mediante el metodo iterativo de Gauss-Seidel.
  
  %%Entrada
  
  k=input("Ingrese el valos de k:");
  m=input("Ingrese el valor de m:");
  
  %%Proceso
  
  if k,m>0
    
    A=[12*k,-k,-5*k;-k,2*k,-k;-5*k,-k,6*k];
    b=[19.62*m;9.81*m;19.62*m];
    x0=[0;0;0];
    tol=1E-3;
    x=gs(A,b,x0,tol);
    
    %%Salida
  
  disp("Los valores de los desplazamientos elasticos son:");
  
  else
  disp("Los valores de k y m no son mayores a cero")
   
  endif
endfunction