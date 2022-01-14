function [Polinter]=Tareainterpol()
## [Polinter]=Tareainterpol() es un programa que realiza una gráfica a traves de polinomios interpoladores a partir de los datos proporcionados por dos archivos .csv 
% Lectura de los archivos y generación de las matrices
 
PUNTOS=csvread('puntos.csv');
CURVAS=csvread('curvas.csv');
N=rows(CURVAS)
M=columns(CURVAS)
figure (); plot (PUNTOS(:,1),PUNTOS(:,2),'or'); title ('NUBE')
hold on
for i=1:N
  k=0;
  for j=1:M
    k=k+1;
    if CURVAS(i,j)!=0
    X(k)=PUNTOS(CURVAS(i,j),1);
    Y(k)=PUNTOS(CURVAS(i,j),2);
    endif 
  endfor
  Polinter=polyfit(X,Y,length(X)-1);
  Poliout=polyout(Polinter);
  Polipuntointermedio=linspace(X(1),X(end),15);
  Polival=polyval(Polinter,Polipuntointermedio);
  
  plot (Polipuntointermedio,Polival,'-r')
 
  clear X
  clear Y
  
endfor 

hold off

endfunction