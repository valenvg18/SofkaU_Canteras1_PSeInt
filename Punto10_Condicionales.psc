Proceso Punto10_Condicionales
	
	Definir titular1, titular2, titular3, titular4, titular5  Como Caracter;
	Definir cantidadT1, cantidadT2, cantidadT3, cantidadT4, cantidadT5 Como Entero;
	Definir nombre Como Caracter;
	Definir operacion Como Entero;
	Definir ingreso Como Entero;
	Definir retiro Como Entero;
	Definir Total Como Entero;
	
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
		
		Escribir "¿Que operación desea realizar?";
		Escribir "1. Ingreso";
		Escribir "2. Retiro";
		Escribir "3. Consultar valor";
		Leer operacion;
		
		Segun operacion Hacer
			1:
				Escribir "¿Cuánto dinero desea ingresar a su cuenta?";
				Leer ingreso;
				Si ingreso > 0 Entonces
					Escribir "INGRESO EXITOSO";
					Escribir "Acaba de ingresar ", ingreso, " pesos a su cuenta";
					Total <- cantidadT1 + ingreso;
					Escribir "Teniendo en cuenta el monto ingresado a la cuenta, ahora usted tiene ", Total;
				SiNo
					Escribir "INGRESO FALLIDO";
					Escribir "Debe ingresar un monto mayor a 0 pesos";
				FinSi
			2:
				Escribir "¿Cuánto dinero desea retirar de su cuenta?";
				Leer retiro;
				Si retiro > cantidadT1 Entonces
					Escribir "RETIRO FALLIDO";
					Escribir "Solo puede retirar un monto igual o menor a la cantidad que tiene en su cuenta";
				SiNo
					Escribir "RETIRO EXITOSO";
					Escribir "Acaba de retirar ", retiro, " pesos de su cuenta";
					Total <- cantidadT1 - retiro;
					Escribir "Teniendo en cuenta el monto retirado de su cuenta, usted ahora tiene ", Total;
				FinSi
			3:
				Escribir "El monto total que tiene en su cuenta es de: ", cantidadT1, " COP.";
			De Otro Modo:
				Escribir "INCORRECTO! por favor ingrese una opción que se encuentre en el menú dado";
		FinSegun
		
		
	SiNo
		Si nombre = titular2 Entonces
			
			Escribir "¿Que operación desea realizar?";
			Escribir "1. Ingreso";
			Escribir "2. Retiro";
			Escribir "3. Consultar valor";
			Leer operacion;
			
			Segun operacion Hacer
				1:
					Escribir "¿Cuánto dinero desea ingresar a su cuenta?";
					Leer ingreso;
					Si ingreso > 0 Entonces
						Escribir "INGRESO EXITOSO";
						Escribir "Acaba de ingresar ", ingreso, " pesos a su cuenta";
						Total <- cantidadT2 + ingreso;
						Escribir "Teniendo en cuenta el monto ingresado a la cuenta, ahora usted tiene ", Total;
					SiNo
						Escribir "INGRESO FALLIDO";
						Escribir "Debe ingresar un monto mayor a 0 pesos";
					FinSi
				2:
					Escribir "¿Cuánto dinero desea retirar de su cuenta?";
					Leer retiro;
					Si retiro > cantidadT2 Entonces
						Escribir "RETIRO FALLIDO";
						Escribir "Solo puede retirar un monto igual o menor a la cantidad que tiene en su cuenta";
					SiNo
						Escribir "RETIRO EXITOSO";
						Escribir "Acaba de retirar ", retiro, " pesos de su cuenta";
						Total <- cantidadT2 - retiro;
						Escribir "Teniendo en cuenta el monto retirado de su cuenta, usted ahora tiene ", Total;
					FinSi
				3:
					Escribir "El monto total que tiene en su cuenta es de: ", cantidadT2, " COP.";
				De Otro Modo:
					Escribir "INCORRECTO! por favor ingrese una opción que se encuentre en el menú dado";
			FinSegun
			
		SiNo
			Si nombre = titular3 Entonces
			
				Escribir "¿Que operación desea realizar?";
				Escribir "1. Ingreso";
				Escribir "2. Retiro";
				Escribir "3. Consultar valor";
				Leer operacion;
				
				Segun operacion Hacer
					1:
						Escribir "¿Cuánto dinero desea ingresar a su cuenta?";
						Leer ingreso;
						Si ingreso > 0 Entonces
							Escribir "INGRESO EXITOSO";
							Escribir "Acaba de ingresar ", ingreso, " pesos a su cuenta";
							Total <- cantidadT3 + ingreso;
							Escribir "Teniendo en cuenta el monto ingresado a la cuenta, ahora usted tiene ", Total;
						SiNo
							Escribir "INGRESO FALLIDO";
							Escribir "Debe ingresar un monto mayor a 0 pesos";
						FinSi
					2:
						Escribir "¿Cuánto dinero desea retirar de su cuenta?";
						Leer retiro;
						Si retiro > cantidadT3 Entonces
							Escribir "RETIRO FALLIDO";
							Escribir "Solo puede retirar un monto igual o menor a la cantidad que tiene en su cuenta";
						SiNo
							Escribir "RETIRO EXITOSO";
							Escribir "Acaba de retirar ", retiro, " pesos de su cuenta";
							Total <- cantidadT3 - retiro;
							Escribir "Teniendo en cuenta el monto retirado de su cuenta, usted ahora tiene ", Total;
						FinSi
					3:
						Escribir "El monto total que tiene en su cuenta es de: ", cantidadT3, " COP.";
					De Otro Modo:
						Escribir "INCORRECTO! por favor ingrese una opción que se encuentre en el menú dado";
				FinSegun
				
			SiNo
				Si nombre = titular4 Entonces
					Escribir "¿Que operación desea realizar?";
					Escribir "1. Ingreso";
					Escribir "2. Retiro";
					Escribir "3. Consultar valor";
					Leer operacion;
					
					Segun operacion Hacer
						1:
							Escribir "¿Cuánto dinero desea ingresar a su cuenta?";
							Leer ingreso;
							Si ingreso > 0 Entonces
								Escribir "INGRESO EXITOSO";
								Escribir "Acaba de ingresar ", ingreso, " pesos a su cuenta";
								Total <- cantidadT4 + ingreso;
								Escribir "Teniendo en cuenta el monto ingresado a la cuenta, ahora usted tiene ", Total;
							SiNo
								Escribir "INGRESO FALLIDO";
								Escribir "Debe ingresar un monto mayor a 0 pesos";
							FinSi
						2:
							Escribir "¿Cuánto dinero desea retirar de su cuenta?";
							Leer retiro;
							Si retiro > cantidadT4 Entonces
								Escribir "RETIRO FALLIDO";
								Escribir "Solo puede retirar un monto igual o menor a la cantidad que tiene en su cuenta";
							SiNo
								Escribir "RETIRO EXITOSO";
								Escribir "Acaba de retirar ", retiro, " pesos de su cuenta";
								Total <- cantidadT4 - retiro;
								Escribir "Teniendo en cuenta el monto retirado de su cuenta, usted ahora tiene ", Total;
							FinSi
						3:
							Escribir "El monto total que tiene en su cuenta es de: ", cantidadT4, " COP.";
						De Otro Modo:
							Escribir "INCORRECTO! por favor ingrese una opción que se encuentre en el menú dado";
					FinSegun
					
				SiNo
					Si nombre = titular5 Entonces
						Escribir "¿Que operación desea realizar?";
						Escribir "1. Ingreso";
						Escribir "2. Retiro";
						Escribir "3. Consultar valor";
						Leer operacion;
						
						Segun operacion Hacer
							1:
								Escribir "¿Cuánto dinero desea ingresar a su cuenta?";
								Leer ingreso;
								Si ingreso > 0 Entonces
									Escribir "INGRESO EXITOSO";
									Escribir "Acaba de ingresar ", ingreso, " pesos a su cuenta";
									Total <- cantidadT5 + ingreso;
									Escribir "Teniendo en cuenta el monto ingresado a la cuenta, ahora usted tiene ", Total;
								SiNo
									Escribir "INGRESO FALLIDO";
									Escribir "Debe ingresar un monto mayor a 0 pesos";
								FinSi
							2:
								Escribir "¿Cuánto dinero desea retirar de su cuenta?";
								Leer retiro;
								Si retiro > cantidadT5 Entonces
									Escribir "RETIRO FALLIDO";
									Escribir "Solo puede retirar un monto igual o menor a la cantidad que tiene en su cuenta";
								SiNo
									Escribir "RETIRO EXITOSO";
									Escribir "Acaba de retirar ", retiro, " pesos de su cuenta";
									Total <- cantidadT5 - retiro;
									Escribir "Teniendo en cuenta el monto retirado de su cuenta, usted ahora tiene ", Total;
								FinSi
							3:
								Escribir "El monto total que tiene en su cuenta es de: ", cantidadT5, " COP.";
							De Otro Modo:
								Escribir "INCORRECTO! por favor ingrese una opción que se encuentre en el menú dado";
						FinSegun
						
					SiNo
						Escribir "Verifique la manera en la que copia su nombre. Por favor escriba su nombre completo y haga uso de las mayúsculas iniciales";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi


	
FinProceso
