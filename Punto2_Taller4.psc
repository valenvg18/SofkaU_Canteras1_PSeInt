Proceso Punto2_Taller4
	
	Definir indice, indicepar, indiceimpar Como Entero;
	Definir arreglo, pares, impares Como Entero;
	Definir contador Como Entero;
	Dimension arreglo[20];
	Dimension pares[20];
	Dimension impares[20];

	indicepar <- 0;
	indiceimpar <- 0;
	
	Escribir "Números aleatorios del 1 al 100: ";
	Escribir "------------------------------------------------------------";
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		arreglo[indice] <- Aleatorio(1,100);
		//Escribir arreglo[indice];
	FinPara
	
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		Si arreglo[indice] mod 2 == 0 Entonces
			pares[indicepar] <- arreglo[indice];
			Escribir pares[indicepar], " ", Sin Saltar;
			indicepar <- indicepar + 1;
			
		SiNo
			impares[indiceimpar] <- arreglo[indice];
			Escribir impares[indiceimpar], " ", Sin Saltar;
			indiceimpar <- indiceimpar + 1;
		FinSi
		
	FinPara
	
	Escribir " ";
	Escribir "------------------------------------------------------------";
	
	Escribir 'Números pares: ' Sin Saltar;
	
	Si indicepar > 0 Entonces
		Para indice <- 0 hasta indicepar - 1 con paso 1 Hacer
			Escribir Sin Saltar, pares[indice], ", ";
		FinPara
		Escribir " ";
	SiNo
		Escribir Sin Saltar 'No hay numeros pares';
	FinSi
	Escribir " ";
	
	Escribir 'Números impares: ' Sin Saltar;
	
	Si indiceimpar > 0 Entonces
		Para indice <- 0 hasta indiceimpar - 1 con paso 1 Hacer
			Escribir sin Saltar, impares[indice], ", ";
		FinPara
		Escribir " ";
	SiNo
		Escribir Sin Saltar 'No hay numeros pares';
	FinSi
	Escribir " ";
	
	
	
FinProceso
