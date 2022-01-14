function [Polinter]=tareainterpol()
## [Polinter]=Tareainterpol() es un programa que realiza una gráfica a traves de polinomios interpoladores a partir de los datos proporcionados por dos archivos .csv 
% Lectura de los archivos y generación de las matrices
PUNTOS=csvread('puntos.csv');
CURVAS=csvread('curvas.csv');
N=rows(CURVAS);
M=columns(CURVAS);

% Gráfica de la nube de puntos dada
figure (); plot (PUNTOS(:,1),PUNTOS(:,2),'or'); title ('NUBE')

hold on
% Relación entre las filas de CURVAS y los elementos de PUNTOS
for i=1:N
  k=0;
  for j=1:M
    k=k+1;
    if CURVAS(i,j)!=0
     % Cálculo de los polinomios interpolantes    
     X(k)=PUNTOS(CURVAS(i,j),1);
     Y(k)=PUNTOS(CURVAS(i,j),2);
    endif 
  endfor
  % Cálculo de los coeficientes de los polinomios  
  Polinter=polyfit(X,Y,length(X)-1);
  Poliout=polyout(Polinter);
  % Preparación de la gráfica de los polinomios
  Polipuntointermedio=linspace(X(1),X(end),15);
  Polival=polyval(Polinter,Polipuntointermedio);
  
  %Gráfica de los polinomios 
  plot (Polipuntointermedio,Polival,'-r')
 
  clear X
  clear Y
  
endfor 

hold off

endfunction