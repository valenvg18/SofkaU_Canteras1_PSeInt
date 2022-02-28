Proceso Punto4_Taller3
	
	Definir digito Como Entero;
	Definir i Como Entero;
	
	Escribir "TABLAS DE MULTIPLICAR";
	Escribir "Bienvenido al generador de tablas de multiplicar";
	Escribir "Por favor indique cual tabla de multiplicar desea ver:";
	leer digito;
	
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		
		Escribir i, " x ", digito, " = ", i * digito;
		
	FinPara
	
FinProceso
