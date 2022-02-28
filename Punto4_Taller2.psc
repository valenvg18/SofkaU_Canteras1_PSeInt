Proceso Punto4_Taller2
	
	Definir nombre Como Caracter;
	Definir opcion Como Entero;
	Definir pelicula Como Entero;
	Definir p1, p2, p3, p4, p5 Como Caracter;
	Definir novedad Como Caracter;

	
	P1 <- "Los Avengers Endgame";
	P2 <- "Encanto";
	P3 <- "El Conjuro";
	P4 <- "Matrix";
	P5 <- "King Kong";
	
	Escribir "¿Cuál es tu nombre?";
	Leer nombre;
	
	Escribir "Bienvenido ", nombre, " a la video tienda del Porvenir";
	
	Escribir "Elije la opcion que deseas ver";
	Escribir "1. Consultar peliculas disponibles";
	Escribir "2. Alquilar pelicula";
	Escribir "3. Entregar pelicula";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Las peliculas disponibles en la video tienda son: "; 
			Escribir "1. Los Avengers Endgame";
			Escribir "2. Encanto";
			Escribir "3. El Conjuro";
			Escribir "4. Matrix";
			Escribir "5. King Kong";
		2:
			Escribir "¿Cuál pelicula deseas alquilar?";
			Escribir "Las peliculas disponibles en la video tienda son: "; 
			Escribir "1. ", P1;
			Escribir "2. ", P2;
			Escribir "3. ", P3;
			Escribir "4. ", P4;
			Escribir "5. ", P5;
			leer pelicula;
			Segun pelicula Hacer
				1:
					Escribir "Alquilaste Los Avengers Endgame";
				2:
					Escribir "Alquilaste Encanto";
				3:
					Escribir "Alquilaste El Conjuro";
				4: 
					Escribir "Alquilaste Matrix";
				5:
					Escribir "Alquilaste King Kong";
				De Otro Modo:
					Escribir "Pelicula no disponible";
			FinSegun
			
		3:
			Escribir "¿Que pelicula deseas entregar?";
			Escribir "1. ", P1;
			Escribir "2. ", P2;
			Escribir "3. ", P3;
			Escribir "4. ", P4;
			Escribir "5. ", P5;
			leer pelicula;
			Segun pelicula Hacer
				1:
					Escribir "Entrgaste Los Avengers Endgame";
				2:
					Escribir "Entregaste Encanto";
				3:
					Escribir "Entregaste El Conjuro";
				4: 
					Escribir "Entregaste Matrix";
				5:
					Escribir "Entregaste King Kong";
				De Otro Modo:
					Escribir "Esa pelicula no hace parte de nuestra video tienda";
			FinSegun
			
			Escribir "¿Tienes alguna sugerencia o novedad frente a la pelicula alquilada o el servicio prestado?";
			Escribir "Escribir Si o No según el caso";
			Definir opcionSugerencia Como Caracter;
			Leer  opcionSugerencia;
			
			
			Si opcionSugerencia = "si" Entonces
				Escribir "Escribir tu sugerencia o novedad";
				leer novedad;
				Escribir "LO TENDREMOS EN CUENTA! GRACIAS POR UTILIZAR NUESTROS SERVICIOS";
				
			SiNo
				Escribir "GRACIAS POR UTILIZAR NUESTROS SERVICIOS";
			FinSi
			
			
		De Otro Modo:
			Escribir "La opción escogida no hace parte de nuestro menú. Vuelve a intentarlo";
	FinSegun

	
	
FinProceso
