function [tita_actual]=pendulodifcentralpaso01(dt)

## Inicializaci�n
g=9.81; %magnitud de la aceleraci�n de la gravedad
L=1; %Longitud del p�ndulo en metros
tita_inicial=pi/2; %Posici�n angular inicial
vel_tita_inicial=0; %Velocidad angular inicial

tiempo_simulacion=10; %tiempo es segundos a simular
cantidad_de_pasos=floor(tiempo_simulacion/dt); %la funci�n floor redondea para abajo ya que cantidad de pasos debe ser un n�mero entero

tita=zeros(1,cantidad_de_pasos); %tita va a almacenar la soluci�n
tita(1,1)=tita_inicial; %el primer valor ya lo conocemos

##Valores de arranque
tita_actual=tita_inicial;
tita_anterior=tita_inicial-vel_tita_inicial*dt-g/L*sin(tita_inicial)*dt^2;

##Simulaci�n
for pasos=1:cantidad_de_pasos-1
    %prediccion de nuevo valor
    tita_futuro=2*tita_actual-(dt^2)*g/L*sin(tita_actual)-tita_anterior; 
    %almacenaje de resultado obtenido
    tita(1,pasos+1)=tita_futuro;
    %actualizaci�n
    tita_anterior=tita_actual; 
    tita_actual=tita_futuro;
endfor

tita_actual=tita_futuro;

##plano de fases
vel_tita=zeros(1,cantidad_de_pasos);
vel_tita(1)=vel_tita_inicial;
vel_tita(end)=(3*tita(end)-4*tita(end-1)+tita(end-2))/(2*dt);
vel_tita(1,2:end-1)=(tita(3:end)-tita(1:end-2))/(2*dt);

plot(tita*180/pi,vel_tita*180/pi,'o-b')
xlabel('Posicion angular en grados')
ylabel('Velocidad angular en grados/s')
axis square
title('Plano de fases')
endfunction 