function [M]=pendienteEulerSimple(i,S,R,B,W)
## Este programa calcula la pendiente M a trav�s del m�todo de Euler Simple  
  M=[-S*W(1,i)+S*W(2,i); -W(1,i)*W(3,i)+R*W(1,i)-W(2,i); W(1,i)*W(2,i)-B*W(3,i)];
endfunction  