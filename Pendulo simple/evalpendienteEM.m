function [M]=evalpendienteEM(Kactual,tiempo)
  ##Evaluaci�n de la pendiente para m�todos de
  ## Euler mejorado.
  
  ##Par�metros.
  g=9.81;
  L=1;
  ##c�lculo del paso
  dt=tiempo(2)-tiempo(1);
  ##M�todo de Heun.
  k1=[Kactual(2);(-g/L)*sin(Kactual(1))];
  Keuler=Kactual + k1*dt;
  k2=[Keuler(2);(-g/L)*sin(Keuler(1))];
  M=(k1+k2)/2;
  endfunction