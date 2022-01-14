function X =sustRegre(A,b)
# --------
# Llamada
# X = sustucionRegresiva(A,b)
# Parametros
# A Matriz de coeficientes triangular
# superior obtenida de gauss(A)
# b Vector lado derecho de la ecuacion
# Devuelve
# X Vector de Solucion del sistema AX=b
n = length(b);
X = zeros(n,1);
X(n) = b(n)/A(n,n);

##Proceso

for r = n-1:-1:1,
X(r) = (b(r) - A(r,r+1:n)*X(r+1:n))/A(r,r);
endfor
endfunction 
