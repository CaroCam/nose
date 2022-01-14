function [M]=evalpendienteES(Zactual,tiempo)
   ##Evaluación de la pendiente para métodos de
  ## Euler simple.
  
  ##Parámetros
  g=9.81;
  L=1;
  
  M=[Zactual(2);(-g/L)*sin(Zactual(1))];
  endfunction