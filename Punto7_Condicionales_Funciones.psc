Proceso Punto7_Condicionales_Funciones
	
	Definir nombre Como Caracter;
	Definir documento Como Entero;
	Definir cedula Como Entero;
	Definir tarjetaidentidad Como Entero;
	Definir pasaporte Como Caracter;
	Definir otroid Como Caracter;
	Definir peso Como Real;
	Definir estatura Como Real; 
	Definir IMC Como Real;
	
	cedula <- 0;
	tarjetaidentidad <- 0;
	pasaporte <- "";
	otroid <- "";
	
	Escribir "SECRETARÍA DE SALUD MUNICIPAL";
	Escribir "-------------------------------------";
	
	nombre <- preguntarCaracter("¿Cual es su nombre completo?");
	
	Escribir "¿Que tipo de documento posee?";
	Escribir "1. Cédula de ciudadanía";
	Escribir "2. Tarjeta de identidad";
	Escribir "3. Pasaporte";
	Leer documento;
	
	Segun documento Hacer
		1:
			cedula <- preguntarEntero("Escriba su número de cédula");
		2:
			tarjetaidentidad <- preguntarEntero("Escriba su numero de tarjeta de identidad");
		3:
			pasaporte <- preguntarCaracter("Escriba su número de pasaporte");
		De Otro Modo:
			otroid <- preguntarCaracter("Si posee algun otro ID, escríbalo por favor");
	FinSegun
	
	peso <- preguntarEntero("¿Cuál es tu peso en Kilogramos?");
	
	Escribir "¿Cuál es tu estatura en metros?";
	Escribir "(Separe el decimal por medio de un punto)";
	Leer estatura;
	
	IMC <- peso/(estatura)^2;
	
	Escribir "Su Índice de Masa Corporal (IMC) es: ", IMC;
	
	Si IMC < 18.5 Entonces
		Escribir nombre, " su IMC está por debajo de lo normal, así que usted se encuentra con bajo peso.";
	SiNo
		Si (IMC >= 18.5 Y IMC <= 24.9) Entonces
			Escribir nombre, " su IMC se encuentra en un rango normal, así que usted se encuentra en un peso normal.";
		FinSi
		
		Si (IMC >= 25.0 Y IMC <= 29.9) Entonces
			Escribir nombre, " su IMC se encuentra por encima de lo normal, así que usted se encuentra en sobrepeso.";
		FinSi
		
		Si IMC >= 30.0 Entonces
			Escribir nombre, " ALERTA! usted se encuentra en estado de obesidad.";
		FinSi
	FinSi
	
FinProceso

SubProceso persona <- preguntarCaracter(pregunta)
	Definir persona Como Caracter;
	Escribir pregunta;
	Leer persona;
FinSubProceso

SubProceso persona <- preguntarEntero(pregunta)
	Definir persona Como Entero;
	Escribir pregunta;
	Leer persona;
FinSubProceso

