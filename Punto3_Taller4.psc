Proceso Punto3_Taller4
	
	Definir x, primos, contador Como Entero;
	
	Escribir "Los números primos del 1 al 1000 son: ";
	Escribir "-----------------------------------------------";
	
	Para primos <- 1 Hasta 1000 Con Paso 1 Hacer
		x <- 1;
		contador <- 0;
		
		Mientras x <= primos Hacer
			Si primos mod x == 0 Entonces
				contador <- contador + 1;
			FinSi
			x <- x + 1;
			
		FinMientras
		
		
		
		Si contador == 2 Entonces
			Escribir  primos, " - ", Sin Saltar;
			
		FinSi
		
		
	FinPara
	
FinProceso
