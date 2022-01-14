function [Is]=Integralsimp()
  %%  [Is]=Integralsimp() es un programa que aproxima
  %% la cantidad de contagios acumulados a través 
  %% del método de Simpson utilizando los datos proporcionados por un archivo .csv
  %% Lectura del archivos y generación de los vectores
  
DATOS=csvread('Reporte diario COVID-19.csv');
X=DATOS(2:end,1);
Fx=DATOS(2:end,2);
n=length(Fx);

%%Tamaño de paso
h=1;

%%Método Simpson

for i=2:h:n
  y=Fx(1:h:i);
  Is(i)=(1/3)*(y(1)+4*sum(y(2:2:end-1))+2*sum(y(3:2:end-1))+y(end));
endfor

endfunction  