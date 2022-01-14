function U = TriangSuperior(A,B)
%Ingreso - A matriz N x N no singular
% - B N x 1 matriz
%salida - U es matriz N x N.
%Iniciaalizar U y la matriz C es la de almacenamiento temporal
[N N]=size(A);
U=zeros(N,N);
C=zeros(1,N+1);
%Forma la matriz aumentada: Aug=[A|B]
Aug=[A B];
for p=1:N-1
 %Pivoteo parcial para columna p
 [Y,j]=max(abs(Aug(p:N,p)));
 %Intercambio fila p y j
 C=Aug(p,:);
 Aug(p,:)=Aug(j+p-1,:);
 Aug(j+p-1,:)=C;

 if Aug(p,p)==0
 'A es singular. No hay solución única'
 break
 end
 %etapa de eliminación para columna p
 for k=p+1:N
 m=Aug(k,p)/Aug(p,p);
 Aug(k,p:N+1)=Aug(k,p:N+1)-m*Aug(p,p:N+1);

end


[Aug(j+p-1,:)]=C
end
endfunction