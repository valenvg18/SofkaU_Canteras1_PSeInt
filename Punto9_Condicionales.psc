Proceso Punto9_Condicionales
	
	Definir figura Como Entero;
	Definir Arectangulo Como Real;
	Definir Atriangulo Como Real;
	Definir Atrapecio Como Real;
	Definir b Como Real;
	Definir h Como Real;
	Definir bm Como Real;
	
	b <- 0;
	h <- 0;
	bm <- 0;
	
	Escribir "ÁREAS DE FIGURAS GEOMÉTRICAS";
	Escribir "-----------------------------------";
	Escribir "¿Cuál es el área de la figura geométrica que desea calcular?";
	Escribir "(Escriba el número correspondiente a la figura)";
	Escribir "1. Rectángulo";
	Escribir "2. Triángulo";
	Escribir "3. Trapecio";
	Leer figura;
	
	Escribir "-----------------------------------";
	Segun figura Hacer
		1:
			Escribir "(Escriba los valores en centímetros)";
			Escribir "¿Cuánto mide la base del rectángulo?";
			Leer b;
			Escribir "¿Cuánto mide la altura del rectángulo?";
			Leer h;
			Arectangulo <- b*h;
			Escribir "-----------------------------------";
			Escribir "El área del restángulo según los valores ingresados, es: ", Arectangulo, " cm^2";
		2:
			
			Escribir "(Escriba los valores en centímetros)";
			Escribir "¿Cuánto mide la base del triángulo?";
			Leer b;
			Escribir "¿Cuánto mide la altura del triángulo?";
			Leer h;
			Atriangulo <- (b*h)/2;
			Escribir "-----------------------------------";
			Escribir "El área del triángulo según los valores ingresados, es: ", Atriangulo, " cm^2";
		3:
			
			Escribir "(Escriba los valores en centímetros)";
			Escribir "¿Cuánto mide la base mayor del trapecio?";
			Leer bm;
			Escribir "¿Cuánto mide la base menor del trapecio?";
			Leer b;
			Escribir "¿Cuánto mide la altura del trapecio?";
			Leer h;
			Atrapecio <- ((bm+b)*h)/2;
			Escribir "-----------------------------------";
			Escribir "El área calculada según los valores ingresados, es: ", Atrapecio, " cm^2";
		De Otro Modo:
			Escribir "Respuesta incorrecta, Elija algunas de las opciones ya dadas.";
	FinSegun
	
FinProceso
