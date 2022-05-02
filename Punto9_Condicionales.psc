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
	
	Escribir "�REAS DE FIGURAS GEOM�TRICAS";
	Escribir "-----------------------------------";
	Escribir "�Cu�l es el �rea de la figura geom�trica que desea calcular?";
	Escribir "(Escriba el n�mero correspondiente a la figura)";
	Escribir "1. Rect�ngulo";
	Escribir "2. Tri�ngulo";
	Escribir "3. Trapecio";
	Leer figura;
	
	Escribir "-----------------------------------";
	Segun figura Hacer
		1:
			Escribir "(Escriba los valores en cent�metros)";
			Escribir "�Cu�nto mide la base del rect�ngulo?";
			Leer b;
			Escribir "�Cu�nto mide la altura del rect�ngulo?";
			Leer h;
			Arectangulo <- b*h;
			Escribir "-----------------------------------";
			Escribir "El �rea del rest�ngulo seg�n los valores ingresados, es: ", Arectangulo, " cm^2";
		2:
			
			Escribir "(Escriba los valores en cent�metros)";
			Escribir "�Cu�nto mide la base del tri�ngulo?";
			Leer b;
			Escribir "�Cu�nto mide la altura del tri�ngulo?";
			Leer h;
			Atriangulo <- (b*h)/2;
			Escribir "-----------------------------------";
			Escribir "El �rea del tri�ngulo seg�n los valores ingresados, es: ", Atriangulo, " cm^2";
		3:
			
			Escribir "(Escriba los valores en cent�metros)";
			Escribir "�Cu�nto mide la base mayor del trapecio?";
			Leer bm;
			Escribir "�Cu�nto mide la base menor del trapecio?";
			Leer b;
			Escribir "�Cu�nto mide la altura del trapecio?";
			Leer h;
			Atrapecio <- ((bm+b)*h)/2;
			Escribir "-----------------------------------";
			Escribir "El �rea calculada seg�n los valores ingresados, es: ", Atrapecio, " cm^2";
		De Otro Modo:
			Escribir "Respuesta incorrecta, Elija algunas de las opciones ya dadas.";
	FinSegun
	
FinProceso
