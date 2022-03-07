Proceso Punto8_Condicionales_Funciones
	Definir nombre Como Caracter;
	Definir sabor Como Caracter;
	Definir porcion Como Entero;
	Definir decoracion Como Caracter;
	Definir pago Como Entero;
	Definir especificacionDeTorta Como Caracter;
	
	
	Escribir "PASTELER�A DON CARLOS";
	
	nombre <- preguntarCaracter("Para realizar su pedido, por favor digite su nombre completo");
	
	Escribir "A continuaci�n podr� elegir la torta del sabor que desee, porciones y decoraci�n";
	sabor <- menuTipo_de_Torta("�Que sabor de torta prefiere?", "Chocolate", "Vainilla", "Milo", "Cheesecake", "Combinada");
	
	
	Escribir "�De cu�ntas porciones desea su torta? (Escriba el n�mero acorde a las porciones que necesite)";
	Leer porcion;
	Si porcion > 50 Entonces
		Escribir "En el momento no tenemos disponible tortas de m�s de 50 porciones.";
	SiNo
		Escribir "Perfecto! se a�adir� a su pedido";
	FinSi
	Escribir "---------------------------------------------------------------------";
	
	decoracion <- menuTipo_de_Torta("�Que tipo de decoraci�n deseas para tu torta?", "Cumplea�os", "Grados", "Boda", "Primera Comuni�n", "Personalizada");
	
	especificacionDeTorta <- especificarTorta(decoracion);
	
	
	Limpiar Pantalla;
	Escribir "Pedido realizado correctamente";	
	Escribir "----------------------------------------------------------------";
	
	Escribir "El pedido de ", nombre, " qued� de la siguiente forma:";
	Escribir "- El sabor de torta que eligi� fue: ", sabor;
	Escribir "- El n�mero de porciones de la torta fue: ", porcion;
	Escribir "- La decoraci�n elegida para torta fue: ", especificacionDeTorta;
;
	Escribir "----------------------------------------------------------------";
	
	Si (porcion >= 1 y porcion <= 3) Entonces
		imprimirPrecio(12);
	SiNo
		Si (porcion >= 4 y porcion <= 7) Entonces
			imprimirPrecio(18);
		FinSi
		
		Si (porcion >= 8 y porcion <= 11) Entonces
			imprimirPrecio(24);
		FinSi
		
		Si (porcion >= 12 y porcion <= 15) Entonces
			imprimirPrecio(30);
		FinSi
		
		Si (porcion >= 16 y porcion <= 19) Entonces
			imprimirPrecio(36);
		FinSi
		
		Si (porcion >= 20 y porcion <= 23) Entonces
			imprimirPrecio(42);
		FinSi
		
		Si (porcion >= 24 y porcion <= 27) Entonces
			imprimirPrecio(48);
		FinSi
		
		Si (porcion >= 28 y porcion <= 31) Entonces
			imprimirPrecio(54);
		FinSi
		
		Si (porcion >= 32 y porcion <= 35) Entonces
			imprimirPrecio(60);
		FinSi
		
		Si (porcion >= 36 y porcion <= 39) Entonces
			imprimirPrecio(66);
		FinSi
		
		Si (porcion >= 40 y porcion <= 43) Entonces
			imprimirPrecio(72);
		FinSi
		
		Si (porcion >= 44 y porcion <= 47) Entonces
			imprimirPrecio(78);
		FinSi
		
		Si (porcion >= 48 y porcion <= 50) Entonces
			imprimirPrecio(84);
		FinSi
		
		
	FinSi
	
	Escribir "----------------------------------------------------------------";
	Escribir "�Cu�l ser� el medio de pago?";
	Escribir "1. Efectivo";
	Escribir "2. D�bito";
	Escribir "3. Cr�dito";
	Leer pago;
	
	Segun pago Hacer
		1:
			Escribir "Pago en Efectivo. EXITOSO!";
		2:
			Escribir "Pago en Tarjeta D�bito. EXITOSO!";
		3:
			Escribir "Pago en Tarjeta de Cr�dito. EXITOSO!";
		De Otro Modo:
			Escribir "Pago RECHAZADO, escoja un medio de pago.";
	FinSegun
	
FinProceso

SubProceso persona <- preguntarCaracter(pregunta)
	Definir persona Como Caracter;
	Escribir pregunta;
	Leer persona;
FinSubProceso

SubProceso torta <- especificarTorta(tipo)
	Definir torta Como Caracter;
	Escribir "Especifica como quisieras la torta tipo ", tipo;
	Leer torta;
FinSubProceso

SubProceso eleccion <- menuTipo_de_Torta(caracteristica, c1, c2, c3, c4, c5)
	Definir eleccion Como Caracter;
	Escribir caracteristica;
	Escribir "- ", c1;
	Escribir "- ", c2;
	Escribir "- ", c3;
	Escribir "- ", c4;
	Escribir "- ", c5;
	Leer eleccion;
FinSubProceso

SubProceso imprimirPrecio(precio)
	Escribir "El costo de la torta es de: $", precio, ".000";
FinSubProceso

