function [M]=pendienteEulerSimple(i,S,R,B,W)
## Este programa calcula la pendiente M a través del método de Euler Simple  
  M=[-S*W(1,i)+S*W(2,i); -W(1,i)*W(3,i)+R*W(1,i)-W(2,i); W(1,i)*W(2,i)-B*W(3,i)];
endfunction  