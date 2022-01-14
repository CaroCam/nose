function X = sustRegre(A,B)
# --------
# Llamada
# X = backsub(A,B)
# Parametros
# A Matriz de coeficientes triangular
# superior obtenida de gauss(A)
# B Vector lado derecho de la ecuacion
# Devuelve
# X Vector de Solucion
n = length(B);
det1 = A(n,n);
X = zeros(n,1);
X(n) = B(n)/A(n,n);
for r = n-1:-1:1,
det1 = det1*A(r,r);
if det1 == 0, break, end
X(r) = (B(r) - A(r,r+1:n)*X(r+1:n))/A(r,r);
end
end
