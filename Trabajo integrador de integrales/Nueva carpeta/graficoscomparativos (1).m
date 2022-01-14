function [G]=graficoscomparativos()
%%  [G]=graficoscomparativos() es un programa de maestro que llama 
%% a todos los demás programas para poder realizar una gráfica donde
%% se compara el valor de las integrales calculadas
%% recibe un archivo CSV de Reporte diario COVID-19
% Lectura de los archivos y utilización de los demás programas

DATOS=csvread('Reporte diario COVID-19.csv');
X=DATOS(:,1); 
[I1,I2]=trapeciopaso1();
[Ir]=Integralrich();
[Is]=Integralsimp();
[Ac]=DATOS(:,3);

%%Gráficos

hold on
plot (X,I1,'-r',X,I2,'-b',X,Ir,'-y',DATOS(2:end,1),Is,'-k',X,Ac,'-g');
##plot (X,I2,'-b');
##plot (X,Ir,'-y');
##plot (X,Is,'-k');
legend('Integral trapecios paso 1','Integral trapecios paso 2','Integral Richardson','Integral Simpson paso 1','Contagios acumulados registrados')
xlabel('Días')
ylabel('Contagios totales')
title('Gráfico comparación')
hold off

endfunction