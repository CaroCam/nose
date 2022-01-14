function [Mem]=pendienteEulerMejorado(i,dt,S,R,B,W)
## Este programa calcula la pendiente M a través del método de Euler Mejorado  
  M1=[-S*W(1,i)+S*W(2,i); -W(1,i)*W(3,i)+R*W(1,i)-W(2,i); W(1,i)*W(2,i)-B*W(3,i)];
  Waux=W+dt*M1;
  M2=[-S*Waux(1,i)+S*Waux(2,i); -Waux(1,i)*Waux(3,i)+R*Waux(1,i)-Waux(2,i); Waux(1,i)*Waux(2,i)-B*Waux(3,i)];
  Mem=(M1+M2)/2;
endfunction  