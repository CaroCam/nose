function A=matriz()
  
  x=input("a");
  y=input("b");
  z =input("c");
  % Formamos un vector con los tres numero ingresados.
  v=[x y z];
  % Permutamos el vector 3 veces y lo escribimos en la matriz A.
  y=perms(v);
  A=[y(1,:);y(2,:);y(3,:)]
  endfunction