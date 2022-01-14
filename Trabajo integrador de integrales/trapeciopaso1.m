function [I1,I2]=trapeciopaso1() 

%% [I1,I2]=trapeciopaso1() es programa que aproxima la

%%cantidad de contagios acumulados a través del método 

%% de integrales por trapecios 

%% I1 es un vector con los resultados de las integrales aproximadas con paso uno para cada día pedido

%% I2 es un vector con los resultados de las integrales aproximadas con paso dos para cada día pedido

%% utilizando el archivo CSV de Reporte diario COVID-19 

%% donde se utiliza la funcion dos veces, para h=1 y h=2.

%% Lectura del archivos y generación de los vectores

DATOS=csvread('Reporte diario COVID-19.csv'); 

X=DATOS(:,1); 

Fx=DATOS(:,2); 

n=length(Fx);

%%Tamaño de paso

h=1;

%%Método de trapecios con paso uno

for i=2:h:n 

y=Fx(1:h:i);

I1(i)=(h/2)*(y(1)+2*sum(y(2:end-1))+y(end)); 

endfor

%%Método de trapecios con paso dos

h=2;

for i=2:h:n 

y=Fx(1:h:i); 

I2(i)=(h/2)*(y(1)+2*sum(y(2:end-1))+y(end));

endfor

endfunction