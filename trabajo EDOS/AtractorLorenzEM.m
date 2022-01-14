function [trayectoriaEM]=AtractorLorenzEM(x,y,z,ti,tf,dt)
## Modo de uso [trayectoria]=AtractorLorenz(x,y,z,ti,tf,dt)
## Este programa aproxima la trayectoria de un modelo determinista tridimensional no lineal de 
## ecuaciones simplificadas de convección atmosférica, a través de Euler Mejorado
## x,y,z son el estado inicial del sistema
## ti,tf son el tiempo inicial y final respectivamente
## dt es el paso de tiempo

% Ingreso de datos
 S=10; %parámetro del sistema
 R=28; %parámetro del sistema
 B=8/3; %parámetro del sistema
 W(1,1)=x;
 W(2,1)=y;
 W(3,1)=z;
 t=ti:dt:tf;
 n=length(t);
 
% Escribir algo
 for i=1:n-1
   Mem=pendienteEulerMejorado(i,dt,S,R,B,W);
   W(:,i+1)=W(:,i)+dt*Mem;
 endfor
 trayectoriaEM=[t',W(1,:)',W(2,:)',W(3,:)'];
 plot(W(1,:),W(3,:))
 xlabel('x(t)');
 ylabel('z(t)');
 title('Trayectoria del estado en el plano XZ');
 
endfunction 