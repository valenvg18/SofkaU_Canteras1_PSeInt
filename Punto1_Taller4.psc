Proceso Punto1_Taller4
	
	Definir nombre Como Caracter;
	Definir indice Como Entero;
	Definir cumple Como Entero;
	Dimension cumple[5];
	Dimension nombre[5];

	
	Escribir "CUMPLEA�EROS";
	Escribir "----------------------------------------------------------------------";
	Escribir "En la empresa sabemos que hay 5 personas que cumplen a�os este mes";
	Escribir "As� que seg�n el orden en el que cumplan, escriban cuantos a�os tienen";
	Escribir "-----------------------------------------------------------------------";
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "CUMPLEA�ERO #", indice + 1, ": " Sin Saltar;
		Leer nombre[indice];
		
		Escribir "�Cu�ntos a�os cumples?: " Sin Saltar;
		Leer cumple[indice];
		Limpiar Pantalla;
	FinPara
	
	Escribir "A continuaci�n se mostrara una lista de nuestros cumplea�eros";
	Escribir "--------------------------------------------------------------";
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[", indice + 1, "] = ", cumple[indice], " -> ", nombre[indice];
	FinPara
	
FinProceso
