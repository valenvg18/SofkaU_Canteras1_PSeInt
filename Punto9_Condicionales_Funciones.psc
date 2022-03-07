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
	
	Escribir "ÁREAS DE FIGURAS GEOMÉTRICAS";
	Escribir "-----------------------------------";
	
	figura <- preguntarFigura();
	Escribir "-----------------------------------";
	
	Segun figura Hacer
		1:
			imprimirCm();
			b <- medirFigura("base", "rectángulo");
			h <- medirFigura("altura", "rectángulo");
			Arectangulo <- b*h;
			imprimirArea("rectángulo", Arectangulo);
		2:
			imprimirCm();
			b <- medirFigura("base", "triángulo");
			h <- medirFigura("altura", "triángulo");
			Atriangulo <- (b*h)/2;
			imprimirArea("triángulo", Atriangulo );
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
	Escribir "¿Cuál es el área de la figura geométrica que desea calcular?";
	Escribir "(Escriba el número correspondiente a la figura)";
	Escribir "1. Rectángulo";
	Escribir "2. Triángulo";
	Escribir "3. Trapecio";
	Leer figura;
FinSubProceso

SubProceso imprimirCm()
	Escribir "(Escriba los valores en centímetros)";
FinSubProceso

SubProceso imprimirArea(figura,area)
	Escribir "-----------------------------------";
	Escribir "El área del ", figura," según los valores ingresados, es: ", area, " cm^2";
FinSubProceso

SubProceso lados <- medirFigura(lado, figura)
	Definir lados Como Entero;
	Escribir "¿Cuánto mide la ",lado," del ", figura;
	Leer lados;
FinSubProceso
