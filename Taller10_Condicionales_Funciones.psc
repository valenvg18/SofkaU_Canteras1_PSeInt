Proceso Punto10_Condicionales_Funciones
	
	Definir titular1, titular2, titular3, titular4, titular5  Como Caracter;
	Definir cantidadT1, cantidadT2, cantidadT3, cantidadT4, cantidadT5 Como Entero;
	Definir nombre Como Caracter;
	Definir operacion Como Entero;
	Definir ingreso Como Entero;
	Definir retiro Como Entero;
	
	titular1 <- "Valentina Villa Granados";
	titular2 <- "Alejandro Restrepo Muñoz";
	titular3 <- "Paula Andrea Granados Sanchez";
	titular4 <- "Alexander Villa Jaramillo";
	titular5 <- "Fernando Garcia Dominguez";
	
	cantidadT1 <- 18000000;
	cantidadT2 <- 23000000;
	cantidadT3 <- 9000000;
	cantidadT4 <- 5000000;
	cantidadT5 <- 12000000;
	
	Escribir "SU BANCO FIEL";
	Escribir "Digite su Nombre Completo";
	Leer nombre;
	
	Si nombre = titular1 Entonces
		operacion <- elegirOperacion();
		
		Segun operacion Hacer
			1:
				ingreso <- contarDinero(cantidadT1);
			2:
				retiro <- retirarDinero(cantidadT1);
			3:
				imprimirMontoTotal(cantidadT1);
			De Otro Modo:
				imprimirOpcionMal();
		FinSegun
	SiNo
		Si nombre = titular2 Entonces
			operacion <- elegirOperacion();
			
			Segun operacion Hacer
				1:
					ingreso <- contarDinero(cantidadT2);
				2:
					retiro <- retirarDinero(cantidadT2);
				3:
					imprimirMontoTotal(cantidadT2);
				De Otro Modo:
					imprimirOpcionMal();
			FinSegun
		SiNo
			Si nombre = titular3 Entonces
				operacion <- elegirOperacion();
				
				Segun operacion Hacer
					1:
						ingreso <- contarDinero(cantidadT3);
					2:
						retiro <- retirarDinero(cantidadT3);
					3:
						imprimirMontoTotal(cantidadT3);
					De Otro Modo:
						imprimirOpcionMal();
				FinSegun
			SiNo
				Si nombre = titular4 Entonces
					operacion <- elegirOperacion();
					
					Segun operacion Hacer
						1:
							ingreso <- contarDinero(cantidadT4);
						2:
							retiro <- retirarDinero(cantidadT4);
						3:
							imprimirMontoTotal(cantidadT4);
						De Otro Modo:
							imprimirOpcionMal();
					FinSegun
				SiNo
					Si nombre = titular5 Entonces
						operacion <- elegirOperacion();
						
						Segun operacion Hacer
							1:
								ingreso <- contarDinero(cantidadT5);
							2:
								retiro <- retirarDinero(cantidadT5);
							3:
								imprimirMontoTotal(cantidadT5);
							De Otro Modo:
								imprimirOpcionMal();
						FinSegun
					Sino
						Escribir "Verifique la manera en la que copia su nombre. Por favor escriba su nombre completo y haga uso de las mayúsculas iniciales";
					Finsi
				FinSi
			FinSi
		FinSi
	FinSi
	
FinProceso

SubProceso imprimirMontoTotal(cantidad)
	Escribir "El monto total que tiene en su cuenta es de: ", cantidad, " COP.";
FinSubProceso

SubProceso imprimirOpcionMal()
	Escribir "INCORRECTO! por favor ingrese una opción que se encuentre en el menú dado";
FinSubProceso

SubProceso respuesta <- elegirOperacion()
	Definir respuesta Como Entero;
	Escribir "¿Que operación desea realizar?";
	Escribir "1. Ingreso";
	Escribir "2. Retiro";
	Escribir "3. Consultar valor";
	Leer respuesta;
FinSubProceso

SubProceso ingresoDinero <- contarDinero(cantidad)
	Definir ingresoDinero Como Entero;
	Definir Total Como Entero;
	Escribir "¿Cuánto dinero desea ingresar a su cuenta?";
	Leer ingresoDinero;
	Si ingresoDinero > 0 Entonces
		Escribir "INGRESO EXITOSO";
		Escribir "Acaba de ingresar ", ingresoDinero, " pesos a su cuenta";
		Total <- cantidad + ingresoDinero;
		Escribir "Teniendo en cuenta el monto ingresado a la cuenta, ahora usted tiene ", Total;
	SiNo
		Escribir "INGRESO FALLIDO";
		Escribir "Debe ingresar un monto mayor a 0 pesos";
	FinSi
FinSubProceso

SubProceso retiroDinero <- retirarDinero(cantidad)
	Definir retiroDinero Como Entero;
	Definir Total Como Entero;
	Escribir "¿Cuánto dinero desea retirar de su cuenta?";
	Leer retiroDinero;
	Si retiroDinero > cantidad Entonces
		Escribir "RETIRO FALLIDO";
		Escribir "Solo puede retirar un monto igual o menor a la cantidad que tiene en su cuenta";
	SiNo
		Escribir "RETIRO EXITOSO";
		Escribir "Acaba de retirar ", retiroDinero, " pesos de su cuenta";
		Total <- cantidad - retiroDinero;
		Escribir "Teniendo en cuenta el monto retirado de su cuenta, usted ahora tiene ", Total;
	FinSi
FinSubProceso
