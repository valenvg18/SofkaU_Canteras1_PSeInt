Proceso Punto5_Taller3
	
	Definir opcion Como Entero;
	Definir nombre Como Caracter;
	
	Repetir
		
		Escribir "===============================================";
		Escribir "Antes de iniciar con el menú, por favor digite su nombre: ";
		Leer nombre;
		
		Limpiar Pantalla;
		
		Escribir "MENÚ DEL USUARIO";
		Escribir "Indique con el numero correspondiente, la opción que desea: ";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir nombre, " su nombre ha sido capturado por el sistema";
				
			2:
				Escribir "¡Hola ", nombre, " es un gusto enorme tenerte por acá!";
				
			3:
				Escribir nombre, ", nos despedimos. ¡Esperamos tenerte de nuevo!";
		FinSegun
		
	Hasta Que opcion = 3;
	
FinProceso
