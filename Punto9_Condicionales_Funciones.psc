Proceso Punto9_Condicionales_Funciones
	
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
	
	figura <- preguntarFigura();
	Escribir "-----------------------------------";
	
	Segun figura Hacer
		1:
			imprimirCm();
			b <- medirFigura("base", "rect�ngulo");
			h <- medirFigura("altura", "rect�ngulo");
			Arectangulo <- b*h;
			imprimirArea("rect�ngulo", Arectangulo);
		2:
			imprimirCm();
			b <- medirFigura("base", "tri�ngulo");
			h <- medirFigura("altura", "tri�ngulo");
			Atriangulo <- (b*h)/2;
			imprimirArea("tri�ngulo", Atriangulo );
		3:
			imprimirCm();
			bm <- medirFigura("base mayor", "trapecio");
			b <- medirFigura("base menor", "trapecio");
			h <- medirFigura("altura", "trapecio");
			Atrapecio <- ((bm+b)*h)/2;
			imprimirArea("trapecio", Atrapecio );
		De Otro Modo:
			Escribir "Respuesta incorrecta, Elija algunas de las opciones ya dadas.";
	FinSegun
	
FinProceso

SubProceso figura <- preguntarFigura()
	Definir figura Como Entero;
	Escribir "�Cu�l es el �rea de la figura geom�trica que desea calcular?";
	Escribir "(Escriba el n�mero correspondiente a la figura)";
	Escribir "1. Rect�ngulo";
	Escribir "2. Tri�ngulo";
	Escribir "3. Trapecio";
	Leer figura;
FinSubProceso

SubProceso imprimirCm()
	Escribir "(Escriba los valores en cent�metros)";
FinSubProceso

SubProceso imprimirArea(figura,area)
	Escribir "-----------------------------------";
	Escribir "El �rea del ", figura," seg�n los valores ingresados, es: ", area, " cm^2";
FinSubProceso

SubProceso lados <- medirFigura(lado, figura)
	Definir lados Como Entero;
	Escribir "�Cu�nto mide la ",lado," del ", figura;
	Leer lados;
FinSubProceso
