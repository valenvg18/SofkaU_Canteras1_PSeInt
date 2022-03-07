Proceso Punto1y2_Condicionales_Funciones
	Definir edad Como Entero;
	edad <- capturar(0);
FinProceso

SubProceso dato <- capturar(edad)
	Definir dato Como Entero;
	
	Escribir "¿Que edad tienes?";
	Leer dato;
	
	Si dato >= 18 Entonces
		Escribir "Usted es mayor de edad";
	SiNo
		Escribir "Usted aún es un niño(a)";
	FinSi
FinSubProceso
	