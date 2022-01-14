function [I1,I2]=trapeciopaso1() 

%% [I1,I2]=trapeciopaso1() es programa que aproxima la

%%cantidad de contagios acumulados a trav�s del m�todo 

%% de integrales por trapecios 

%% I1 es un vector con los resultados de las integrales aproximadas con paso uno para cada d�a pedido

%% I2 es un vector con los resultados de las integrales aproximadas con paso dos para cada d�a pedido

%% utilizando el archivo CSV de Reporte diario COVID-19 

%% donde se utiliza la funcion dos veces, para h=1 y h=2.

%% Lectura del archivos y generaci�n de los vectores

DATOS=csvread('Reporte diario COVID-19.csv'); 

X=DATOS(:,1); 

Fx=DATOS(:,2); 

n=length(Fx);

%%Tama�o de paso

h=1;

%%M�todo de trapecios con paso uno

for i=2:h:n 

y=Fx(1:h:i);

I1(i)=(h/2)*(y(1)+2*sum(y(2:end-1))+y(end)); 

endfor

%%M�todo de trapecios con paso dos

h=2;

for i=2:h:n 

y=Fx(1:h:i); 

I2(i)=(h/2)*(y(1)+2*sum(y(2:end-1))+y(end));

endfor

endfunction