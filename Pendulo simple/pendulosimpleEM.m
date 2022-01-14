function [K,tiempo]=pendulosimpleEM(dt)
  ##Soluci�n del problema de p�ndulo simple por
  ## Runge kutta 4.
  ## Utilizamos la funci�n evalpendienteEM que
  ## evalua la pendiente mediante el m�todo de
  ## Euler mejorado.
  
  ##Par�metros.
  y0=pi/2;
  dydt0=0;
  tiempofinal=10;
  ##Discretizaci�n.
  tiempo=0:dt:tiempofinal;
  ndt=length(tiempo);
  ##Inicio del m�todo de un paso.
  K(:,1)=[y0;dydt0];
  for i=1:ndt
    ##Evaluar la pendiente.
    [M]=evalpendienteEM(K(:,i),tiempo);
    ##Predecir nuevo estado.
    K(:,i+1)=K(:,i) + dt*M;
    
  endfor
  ##Graficamos
  plot (K(1,:),K(2,:),'x-r');
endfunction