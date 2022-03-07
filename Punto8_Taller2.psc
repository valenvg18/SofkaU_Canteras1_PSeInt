Proceso Punto8_Taller2
	
	Definir nombre Como Caracter;
	Definir sabor Como Caracter;
	Definir porcion Como Entero;
	Definir decoracion Como Entero;
	Definir cumpleanos Como Caracter;
	Definir grados Como Caracter;
	Definir boda Como Caracter;
	Definir comunion Como Caracter;
	Definir personalizar Como Caracter;
	Definir pago Como Entero;
	
	cumpleanos <- "";
	grados <- "";
	boda <- "";
	comunion <- "";
	personalizar <-"";
	
	Escribir "PASTELER�A DON CARLOS";
	
	Escribir "Para realizar su pedido, por favor digite su nombre completo";
	Leer nombre;
	
	Escribir "A continuaci�n podr� elegir la torta del sabor que desee, porciones y decoraci�n";
	Escribir "�Que sabor de torta prefiere? (Escriba el sabor que desee)";
	Escribir "1. Chocolate";
	Escribir "2. Vainilla";
	Escribir "3. Milo";
	Escribir "4. Cheesecake";
	Escribir "5. Combinada (Vainilla y Chocolate)";
	
	Leer sabor;
	

	Escribir "�De cu�ntas porciones desea su torta? (Escriba el n�mero acorde a las porciones que necesite)";
	Leer porcion;
	Si porcion > 50 Entonces
		Escribir "En el momento no tenemos disponible tortas de m�s de 50 porciones.";
	SiNo
		Escribir "Perfecto! se a�adir� a su pedido";
	FinSi
	Escribir "---------------------------------------------------------------------";
	
	Escribir "�Que tipo de decoraci�n deseas para tu torta? (Elije el n�mero de acuerdo a la torta que quieres)";
	Escribir "1. Cumplea�os";
	Escribir "2. Grados";
	Escribir "3. Boda";
	Escribir "4. Primera Comuni�n";
	Escribir "5. Personalizada";
	Leer decoracion;
	
	Segun decoracion Hacer
		1:
			Escribir "Especifica como quisieras la torta tipo cumplea�os";
			Leer cumpleanos;
		2:
			Escribir "Especifica como quisieras la torta tipo grados";
			Leer grados;
		3:
			Escribir "Especifica como quisieras la torta tipo boda";
			Leer boda;
		4:
			Escribir "Especifica como quisieras la torta tipo primera comuni�n";
			Leer comunion;
		De Otro Modo:
			Escribir "Especifica como quisieras personalizar la torta";
			Leer personalizar;
	FinSegun
	
	Limpiar Pantalla;
	Escribir "Pedido realizado correctamente";	
	Escribir "----------------------------------------------------------------";
	
	Escribir "El pedido de ", nombre, " qued� de la siguiente forma:";
	Escribir "- El sabor de torta que eligi� fue: ", sabor;
	Escribir "- El n�mero de porciones de la torta fue: ", porcion;
	Escribir "- La decoraci�n elegida para torta fue: ", cumpleanos, grados, boda, comunion, personalizar;
	
	Escribir "----------------------------------------------------------------";
	
	Si (porcion >= 1 y porcion <= 3) Entonces
		Escribir "El costo de la torta es de: $12.000";
	SiNo
		Si (porcion >= 4 y porcion <= 7) Entonces
			Escribir "El costo de la torta es de: $18.000";
		FinSi
		
		Si (porcion >= 8 y porcion <= 11) Entonces
			Escribir "El costo de la torta es de: $24.000";
		FinSi
		
		Si (porcion >= 12 y porcion <= 15) Entonces
			Escribir "El costo de la torta es de: $30.000";
		FinSi
		
		Si (porcion >= 16 y porcion <= 19) Entonces
			Escribir "El costo de la torta es de: $36.000";
		FinSi
		
		Si (porcion >= 20 y porcion <= 23) Entonces
			Escribir "El costo de la torta es de: $42.000";
		FinSi
		
		Si (porcion >= 24 y porcion <= 27) Entonces
			Escribir "El costo de la torta es de: $48.000";
		FinSi
		
		Si (porcion >= 28 y porcion <= 31) Entonces
			Escribir "El costo de la torta es de: $54.000";
		FinSi
		
		Si (porcion >= 32 y porcion <= 35) Entonces
			Escribir "El costo de la torta es de: $60.000";
		FinSi
		
		Si (porcion >= 36 y porcion <= 39) Entonces
			Escribir "El costo de la torta es de: $66.000";
		FinSi
		
		Si (porcion >= 40 y porcion <= 43) Entonces
			Escribir "El costo de la torta es de: $72.000";
		FinSi
		
		Si (porcion >= 44 y porcion <= 47) Entonces
			Escribir "El costo de la torta es de: $78.000";
		FinSi
		
		Si (porcion >= 48 y porcion <= 50) Entonces
			Escribir "El costo de la torta es de: $84.000";
		FinSi
		
		
	FinSi
	
	
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
