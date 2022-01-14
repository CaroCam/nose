function [error002,error001,error0005]=ErrorRelativoPasos(x,y,z,ti,tf)
## Este programa calcula el error relativo entre distintos pasos para los métodos utilizados
%Ingreso de datos
 [trayectoriaES1]=AtractorLorenzES(x,y,z,ti,tf,0.02); %Paso dt=0.02 Euler Simple 
 [trayectoriaEM1]=AtractorLorenzEM(x,y,z,ti,tf,0.02); %Paso dt=0.02 Euler Mejorado
 error002=norm(trayectoriaES1(end,:)-trayectoriaEM1(end,:),2)/norm(trayectoriaEM1(end,:)); %Error relativo paso dt=0.02 
 
 [trayectoriaES2]=AtractorLorenzES(x,y,z,ti,tf,0.01); %Paso dt=0.01 Euler Simple 
 [trayectoriaEM2]=AtractorLorenzEM(x,y,z,ti,tf,0.01); %Paso dt=0.01 Euler Mejorado
 error001=norm(trayectoriaES2(end,:)-trayectoriaEM2(end,:),2)/norm(trayectoriaEM2(end,:)); %Error relativo paso dt=0.01
 
 [trayectoriaES3]=AtractorLorenzES(x,y,z,ti,tf,0.005);%Paso dt=0.005 Euler Simple 
 [trayectoriaEM3]=AtractorLorenzEM(x,y,z,ti,tf,0.005);%Paso dt=0.005 Euler Mejorado
 error0005=norm(trayectoriaES3(end,:)-trayectoriaEM3(end,:),2)/norm(trayectoriaEM3(end,:)); %Error relativo paso dt=0.005

endfunction