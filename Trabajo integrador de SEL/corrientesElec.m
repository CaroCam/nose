function [i]=corrientesElec(R)
  %% La funcion me da como resultado los valores de las 
  %% corrientes electricas.
  %% - R es la resistencia.
  %% Se resuelve el sistema mediante el metodo iterativo de Jacobi.
  
  %%Entrada
  
  R=input("Ingrese el valos de R:");
  
  %%Proceso
  
  if R>0
    
    A=[(50+R),-R,-30;-R,(65+R),-15;-30,-15,45];
    b=[0;0;120];
    x0=[0;0;0];
    tol=1E-3;
    i=jacobi(A,b,x0,tol);
    
    %%Salida
  
  disp("Los valores de las corrientes electricas son:");
  
  else
  disp("El valor de R no es mayor a cero")
   
  endif
endfunction