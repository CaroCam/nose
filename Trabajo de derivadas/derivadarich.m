function [Dr]=derivadarich()

[dfdx1]=derivada1paso1();
[dfdx2]=derivada1paso2();
n=length(dfdx1);
%M�todo de Richardson
for i=1:n-1
Dr(i)=(4*dfdx1(i)-dfdx2(i))/(3);
endfor
endfunction