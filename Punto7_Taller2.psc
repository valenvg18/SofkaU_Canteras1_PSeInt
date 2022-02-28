Proceso sin_titulo
	
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

	
	Escribir "Secretaría de Salud Municipal";
	
	Escribir "¿Cual es su nombre completo?";
	Leer nombre;
	
	Escribir "¿Que tipo de documento posee?";
	Escribir "1. Cedula de Ciudadanía";
	Escribir "2. Tarjeta de Identidad";
	Escribir "3. Pasaporte";
	Leer documento;
	
	Segun documento Hacer
		1:
			Escribir "Escriba su número de cédula";
			Leer cedula;
		2:
			Escribir "Escriba su numero de tarjeta de identidad";
			Leer tarjetaidentidad;
		3:
			Escribir "Escriba su número de pasaporte";
			Leer pasaporte;
		De Otro Modo:
			Escribir "Si posee algun otro ID, escríbalo por favor";
			leer otroid;
	FinSegun
	
	Escribir "¿Cuál es tu peso en Kilogramos?";
	Leer peso;
	
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
