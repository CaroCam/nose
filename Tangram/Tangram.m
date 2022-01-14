function [areaTangram] = Tangram() 
  
  ## Entrada
  L = input("Ingrese el valor del lado: ");
  
  ## Proceso
  ## - Calcular bases y alturas
  bTG = L;
  hTG = L/2;
  bTM = 2*L/sqrt(8);
  hTM = L/sqrt(8);
  bTP = L/2;
  hTP = L/4;
  ladoCuad = L/sqrt(8);
  bPara = L/2;
  hPara = L/4;
  
  ## - Calcular las areas 
  areaTG = calcularAreaTriangulo(bTG,hTG);
	areaTM = calcularAreaTriangulo(bTM,hTM);
	areaTP = calcularAreaTriangulo(bTP,hTP);
	areaPara = calcularAreaParalelogramo(bPara,hPara);
	areaCuad = calcularAreaParalelogramo(ladoCuad,ladoCuad);
  
  ## - Calcular area total
  areaTangram = areaTG * 2 + areaTM + areaTP * 2 + areaCuad + areaPara;
  
  ## Salida
  disp("El area del Tangram es: "), disp(areaTangram);
  
  endfunction