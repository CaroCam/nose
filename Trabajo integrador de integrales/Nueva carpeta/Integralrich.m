function [Ir]=Integralrich()
## [Ir]=Integralrich() es un programa que combina los resultados 
%%de [I1,I2]=trapeciopaso1() y utiliza el método de Richardson 
%%para calcular nuevas integrales
%% donde betha es 4.
%Datos del programa [I1,I2]=trapeciopaso1()
[I1,I2]=trapeciopaso1();
n=length(I1); 
%Método de Richardson
for i=1:n
  Ir(i)=(4*I1(i)-I2(i))/(3); 
endfor
endfunction