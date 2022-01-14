function [M]=evalpendienteES(Zactual,tiempo)
   ##Evaluaci�n de la pendiente para m�todos de
  ## Euler simple.
  
  ##Par�metros
  g=9.81;
  L=1;
  
  M=[Zactual(2);(-g/L)*sin(Zactual(1))];
  endfunction