Proceso Punto3_Taller3
	
	Definir filas Como Entero;
	Definir Columnas Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	
	filas <- 1;
	j <- 2;
	
	Repetir
		columnas <- 0;
		
		
		Si filas < 12 Entonces
			Repetir
				columnas <- columnas + 1;
				
				Si (columnas <= (20/2)- filas + 1) o (columnas >= (20/2)+ filas + 1) Entonces
					Escribir Sin Saltar " ";
				FinSi
				
				Si (columnas > (20/2)- filas + 1) Y (columnas < (20/2)+ filas + 1) Entonces
					Escribir Sin Saltar "*";
				FinSi
				
				Si columnas = 21 Entonces
					Escribir " ";
				FinSi
				
			Hasta Que columnas = 21;
			
		FinSi
		
		Si filas = 12 Entonces
			i <- 2;
			
			Repetir
				columnas <- columnas + 1;
				
				Si (columnas <= (20/2)- i + 1) o (columnas >= (20/2)+ i + 1) Entonces
					Escribir Sin Saltar " ";
				FinSi
				
				Si (columnas > (20/2)- i + 1) Y (columnas < (20/2)+ i + 1) Entonces
					Escribir Sin Saltar "*";
				FinSi
				
				Si columnas = 21 Entonces
					Escribir " ";
				FinSi
				
			Hasta Que columnas = 21;
			
		FinSi
		
		Si filas > 12 Entonces
			
			Repetir
				columnas <- columnas + 1;
				
				Si (columnas <= (20/2)- j + 1) o (columnas >= (20/2)+ j + 1) Entonces
					Escribir Sin Saltar " ";
				FinSi
				
				Si (columnas > (20/2)- j + 1) Y (columnas < (20/2)+ j + 1) Entonces
					Escribir Sin Saltar "*";
				FinSi
				
				Si columnas = 21 Entonces
					Escribir " ";
				FinSi
				
			Hasta Que columnas = 21
			
			j <- j + 1;
		FinSi
		
		filas <- filas + 1;
	Hasta Que filas = 16;
	
FinProceso
