Proceso Punto1_Taller4
	
	Definir nombre Como Caracter;
	Definir indice Como Entero;
	Definir cumple Como Entero;
	Dimension cumple[5];
	Dimension nombre[5];

	
	Escribir "CUMPLEAÑEROS";
	Escribir "----------------------------------------------------------------------";
	Escribir "En la empresa sabemos que hay 5 personas que cumplen años este mes";
	Escribir "Así que según el orden en el que cumplan, escriban cuantos años tienen";
	Escribir "-----------------------------------------------------------------------";
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "CUMPLEAÑERO #", indice + 1, ": " Sin Saltar;
		Leer nombre[indice];
		
		Escribir "¿Cuántos años cumples?: " Sin Saltar;
		Leer cumple[indice];
		Limpiar Pantalla;
	FinPara
	
	Escribir "A continuación se mostrara una lista de nuestros cumpleañeros";
	Escribir "--------------------------------------------------------------";
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[", indice + 1, "] = ", cumple[indice], " -> ", nombre[indice];
	FinPara
	
FinProceso
