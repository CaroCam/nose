function [Z,tiempo]=pendulosimpleES(dt)
  ##Soluci�n del problema de p�ndulo simple por
  ## Runge kutta 4.
  ## Utilizamos la funci�n evalpendienteES que
  ## evalua la pendiente mediante el m�todo de
  ## Euler simple.
  
  ## Par�metros
  y0=pi/2;
  dydt0=0;
  tiempofinal=10;
  ##Discretizaci�n.
  tiempo=0:dt:tiempofinal;
  ndt=length(tiempo);
  ##Inicio del m�todo de un paso
  Z(:,1)=[y0;dydt0];
  for i=1:ndt
    ##Evaluar la pendiente
    [M]=evalpendienteES(Z(:,i),tiempo);
    ##Predecir nuevo estado
    Z(:,i+1)=Z(:,i) + dt*M;
    
  endfor
  ##Graficamos
  plot (Z(1,:),Z(2,:),'x-r');
endfunction