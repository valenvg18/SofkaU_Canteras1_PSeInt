Proceso Punto3_Condicionales
	
	Escribir "------REGISTRO ENTRADAS A LA FIESTA------";
	
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	Definir edad Como Entero;
	
	Escribir "¿Cuál es tu nombre?";
	Leer nombre;
	
	Escribir "¿Cuáles son tus apellidos?";
	leer apellidos;
	
	Escribir "¿Cuál es tu edad?";
	leer edad;
	
	Limpiar Pantalla;
	
	Si edad >= 18 Entonces
		Escribir nombre, " ", apellidos, " Usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir nombre, " ", apellidos, " Usted es menor de edad, por lo tanto no puede entrar a la fiesta, por favor devuélvase a su casa."; 
	FinSi
	
FinProceso
