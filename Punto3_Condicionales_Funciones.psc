Proceso Punto3_Condicionales_Funciones
	
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	Definir edad Como Entero;
	
	nombre <- captura ("�Cu�l es tu nombre?");
	
	apellidos <- captura ("Cu�les son tus apellidos?");
	
	edad <- capturar(0);
	
	Si edad >= 18 Entonces
		Escribir nombre, " ", apellidos, " Usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir nombre, " ", apellidos, " Usted es menor de edad, por lo tanto no puede entrar a la fiesta. Por favor devu�lvase a su casa"; 
	FinSi
FinProceso

SubProceso dato <- captura (mensaje)
	Definir dato Como Caracter;
	Escribir mensaje;
	Leer dato;
FinSubProceso

SubProceso edad <- capturar(dato)
	Definir edad Como Entero;
	Escribir "�Cu�l es tu edad?";
	leer edad;
	
	
FinSubProceso
	