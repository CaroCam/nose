function [dfdx2]=derivada1paso2()
  DATOS=csvread('Reporte diario COVID-19.csv');
  X=DATOS(:,1);
  fx=DATOS(:,2)';
  n=length(fx);
  h=2;
  fx(1)=1;
  fx(60)=104;
  for i=2:h:(n-1)
    dfdx2(i)=(fx(i+1)-fx(i-1))/(2*(X(i+1)-X(i-1)));
  endfor

endfunction