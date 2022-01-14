function [X]=tSSR(A,B)
%% A matriz N x N no singular
%% B es una matriz N x 1
%% X es matriz N x 1 con la soluci�n de AX=B.
%% C es una matriz de almacenaje temporal.

%% Entrada

[N N]=size(A);
X=zeros(N,1);
C=zeros(1,N+1);

%% Crea la matriz aumentada: Aug=[A|B]

Aug=[A B];

  for p=1:N-1
  %%Pivoteo parcial para columna p

   [Y,j]=max(abs(Aug(p:N,p)));

   %%Intercambio fila p y j

   C=Aug(p,:);
   Aug(p,:)=Aug(j+p-1,:);
   Aug(j+p-1,:)=C;

    if Aug(p,p)==0
      
     'A es singular. No hay soluci�n �nica'
      break
    endif
    
   %%etapa de eliminaci�n para columna p
   
    for k=p+1:N
     m=Aug(k,p)/Aug(p,p);
     Aug(k,p:N+1)=Aug(k,p:N+1)-m*Aug(p,p:N+1);
    endfor
  endfor
  
%%sustituaci�n hacia atr�s en [U|Y]

X=sustRegre(Aug(1:N,1:N),Aug(1:N,N+1));

endfunction