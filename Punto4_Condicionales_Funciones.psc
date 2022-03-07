Proceso Punto4_Condicionales_Funciones
	
	Definir nombre Como Caracter;
	Definir opcion Como Entero;
	Definir pelicula Como Entero;
	Definir sugerencia Como Caracter;
	
	nombre <- capturar("¿Cuál es tu nombre?");
	Limpiar Pantalla;
	
	Escribir "Bienvenid@ ", nombre, " a la video tienda del Porvenir";
	
	opcion <- elegir_Opcion_Menu();
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Las peliculas disponibles en la video tienda son: "; 
			imprimir_Peliculas;
		2:
			pelicula <- imprimir_accion("¿Cuál pelicula deseas alquilar?", "Alquilaste ", "Esa pelicula no esta disponible para ser alquilada");
			
		3:
			pelicula <- imprimir_accion("¿Cuál pelicula deseas entregar?", "Entregaste ", "Esa pelicula no hace parte de nuestra video tienda");
			
			Escribir "-----------------------------------------------------------------";
			sugerencia <- escribir_Sugerencia("Escribir tu sugerencia o novedad");
			
			
		De Otro Modo:
			Escribir "La opción escogida no hace parte de nuestro menú. Vuelve a intentarlo";
	FinSegun
	
FinProceso

SubProceso imprimir_Peliculas()
	Escribir "1. Los Avengers Endgame";
	Escribir "2. Encanto";
	Escribir "3. El Conjuro";
	Escribir "4. Matrix";
	Escribir "5. King Kong";
FinSubProceso

SubProceso nombre <- capturar(mensaje)
	Definir nombre Como Caracter;
	Escribir mensaje;
	Leer nombre;
FinSubProceso

SubProceso opcionmenu <- elegir_Opcion_Menu()
	Definir opcionmenu Como Entero;
	Escribir "Elije la opcion que deseas ver";
	Escribir "1. Consultar peliculas disponibles";
	Escribir "2. Alquilar pelicula";
	Escribir "3. Entregar pelicula";
	Leer opcionmenu;
FinSubProceso

SubProceso sugerencia <- escribir_Sugerencia(mensaje)
	Definir sugerencia, novedad Como Caracter;
	
	Escribir "¿Tienes alguna sugerencia o novedad frente a la pelicula alquilada o el servicio prestado?";
	Escribir "Escribir Si o No según el caso";
	Leer  sugerencia;
	
	Limpiar Pantalla;
	Si sugerencia = "si" Entonces
		Escribir mensaje;
		leer novedad;
		Escribir "LO TENDREMOS EN CUENTA! GRACIAS POR UTILIZAR NUESTROS SERVICIOS";
		
	SiNo
		Escribir "GRACIAS POR UTILIZAR NUESTROS SERVICIOS";
	FinSi
	
FinSubProceso

SubProceso retorno <- imprimir_accion(mensaje, mensaje1, mensaje2)
	Definir retorno Como Entero;
	Definir p1, p2, p3, p4, p5 Como Caracter;
	
	P1 <- "Los Avengers Endgame";
	P2 <- "Encanto";
	P3 <- "El Conjuro";
	P4 <- "Matrix";
	P5 <- "King Kong";
	
	Escribir mensaje;
	imprimir_Peliculas;
	Leer retorno;
	Limpiar Pantalla;
	
	Segun retorno Hacer
		1:
			Escribir mensaje1, P1;
		2:
			Escribir mensaje1, P2;
		3:
			Escribir mensaje1, P3;
		4: 
			Escribir mensaje1, P4;
		5:
			Escribir mensaje1, P5;
		De Otro Modo:
			Escribir mensaje2;
	FinSegun
FinSubProceso
