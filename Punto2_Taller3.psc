Proceso Punto2_Taller3
	
	Definir i Como Entero;
	Definir j Como Entero;
	
	i <- 1;
	
	
	Mientras i <= 10  Hacer 
		j <- 1;
		Mientras j <= 10 Hacer
			
			Si j > (10- i) Entonces
				Escribir Sin Saltar "*";
			SiNo
				Escribir Sin Saltar " ";
			FinSi
			
			Si j = 10 Entonces
				Escribir " ";
			FinSi
			
			j <- j+1;
		FinMientras
		
		i <- i+1;
	FinMientras
	
FinProceso
