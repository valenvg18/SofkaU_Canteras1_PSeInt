Proceso Punto6_Taller2
	
	Definir solicitud Como Entero;
	Definir cilindraje Como Entero;
	Definir marca Como Caracter;
	Definir modelo Como Caracter;
	Definir placa Como Caracter;
	Definir nombre Como Caracter;
	Definir observaciones Como Caracter;
	Definir razon Como Entero;
	Definir respuesta Como Logico;
	Definir respuesta1 Como Logico;
	Definir respuesta_arreglo Como Logico;
	Definir respuesta_repuestos Como Logico;
	Definir salida Como Logico;
	Definir mantenimiento Como Caracter;
	Definir motor Como Caracter;
	Definir frenos Como Caracter;
	Definir filtro Como Caracter;
	Definir novedad Como Caracter;
	Definir cadenamoto Como Caracter;
	Definir arreglo Como Caracter;
	Definir repuestos Como Caracter;
	
	mantenimiento <- "";
	motor <- "";
	frenos <- "";
	filtro <- "";
	cadenamoto <- "";
	novedad <- "";
	arreglo <- "";
	repuestos <- "";
	respuesta <- Falso;
	respuesta1 <- Falso;
	respuesta_arreglo <- Falso;
	salida <- Falso;
	
	
	Escribir "TALLER DE MOTOS EL MAQUINISTA";
	Escribir "�Que solicitud desea realizar?";
	Escribir "1. Moto para ingresar al taller";
	Escribir "2. Moto para darle salida del taller";
	leer solicitud;
	
	Segun solicitud Hacer
		1:
			Escribir "�Cu�l es el cilindraje de la moto que se va a ingresar?";
			Leer cilindraje;
			
			Si cilindraje >= 400 Entonces
				
				Escribir "�Que marca es la moto a ingresar?";
				leer marca;
				
				Escribir "�Que modelo es la moto a ingresar?";
				leer modelo;
				
				Escribir "�Que placa tiene la moto a ingresar?";
				leer placa;
				
				Escribir "�Cu�l es el nombre completo del propietario de la moto?";
				Leer nombre;
				
				Escribir "�Cu�les fueron las observaciones por parte del propietario de la moto?";
				Leer observaciones;
				
				Escribir "Seg�n las observaciones del propietario, la raz�n por la cual la moto ingreso al taller, se puede clasificar como:";
				Escribir "1. Mantenimiento General";
				Escribir "2. Problema en el motor";
				Escribir "3. Problemas con los frenos o cambio de pastas";
				Escribir "4. Animal�as con el filtro o cambio de este";
				Escribir "5. Problema en la cadena";
				Leer razon;
				
				Segun razon Hacer
					1:
						Escribir "�La moto solo necesit� mantenimineto general?";
						Escribir "(Responder Verdadero o Falso seg�n el caso)";
						leer respuesta;
						Si respuesta = Verdadero Entonces
							Escribir "Describa el mantenimiento general que se le realizar� a la moto";
							leer mantenimiento;
							Escribir "Guardado en el sistema";
						SiNo
							Escribir "Describa la novedad encontrada en la motocicleta";
							Leer novedad;
							Escribir "Guardado en el sistema";
						FinSi
					2:
						Escribir "�La moto solo tuvo problemas referente al motor o su correcto funcionamiento?";
						Escribir "(Responder Verdadero o Falso seg�n el caso)";
						leer respuesta;
						Si respuesta = Verdadero Entonces
							Escribir "Describa el da�o del motor que presentaba la moto";
							leer motor;
							Escribir "Guardado en el sistema";
						SiNo
							Escribir "Describa la novedad encontrada en la motocicleta";
							Leer novedad;
							Escribir "Guardado en el sistema";
						FinSi
					3:
						Escribir "�La moto solo tuvo problemas referente a los frenos o se realizar� solo cambio de pastas?";
						Escribir "(Responder Verdadero o Falso seg�n el caso)";
						leer respuesta;
						Si respuesta = Verdadero Entonces
							Escribir "Especificar el problema de frenos detectado en la moto o si es referente al cambio de pastas, especificar la cantidad cambiada y por cuales se cambio";
							leer frenos;
							Escribir "Guardado en el sistema";
						SiNo
							Escribir "Describa la novedad encontrada en la motocicleta";
							Leer novedad;
							Escribir "Guardado en el sistema";
						FinSi
					4:
						Escribir "�La moto solo tuvo anomal�as refrente al filtro o solo se le realizar� cambio de este?";
						Escribir "(Responder Verdadero o Falso seg�n el caso)";
						leer respuesta;
						Si respuesta = Verdadero Entonces
							Escribir "Especificar las anomalias que se presentaron con el filtro o especificar si fue cambio de este";
							leer filtro;
							Escribir "Guardado en el sistema";
						SiNo
							Escribir "Describa la novedad encontrada en la motocicleta";
							Leer novedad;
							Escribir "Guardado en el sistema";
						FinSi
					5:
						Escribir "�La moto solo tuvo problemas referente a la cadena?";
						Escribir "(Responder Verdadero o Falso seg�n el caso)";
						leer respuesta;
						Si respuesta = Verdadero Entonces
							Escribir "Describa el problema presentado en la cadena";
							leer cadenamoto;
							Escribir "Guardado en el sistema";
						SiNo
							Escribir "Describa la novedad encontrada en la motocicleta";
							Leer novedad;
							Escribir "Guardado en el sistema";
						FinSi
						
					De Otro Modo:
						Escribir "Eligi� una opci�n incorrecta. Intente de nuevo.";
				FinSegun
				
				Escribir "�Desea darle salida a la moto?";
				Escribir "(Escribir Verdadero o Falso, seg�n el caso)";
				Leer salida;
				
				Si salida = Verdadero Entonces
					
				
					Escribir "�Hubo algun arreglo adicional hecho por parte del mec�nico?";
					Escribir "(Escribir Verdadero o Falso, seg�n el caso)";
					leer respuesta_arreglo;
					
					Si respuesta_arreglo = Verdadero Entonces
						Escribir "Describa especificamente que arreglos necesit�";
						leer arreglo;
						Escribir "Al realizar el arreglo, �Necesit� hacer uso de repuestos?";
						Escribir "(Escribir Verdadero o Falso, seg�n el caso)";
						Leer respuesta_repuestos;
					
						Si respuesta_repuestos = Verdadero Entonces
							Escribir "Mencione los respuestos utilizados para el arreglo";
							leer repuestos;
							Escribir "Motocicleta lista para darle salida";
						SiNo
							Escribir "Motocicleta lista para darle salida";
						FinSi
					
					SiNo
						Escribir "Motocicleta lista para darle salida";
					FinSi
					
					
					
				SiNo
					Escribir "Motocicleta lista para darle salida";
				FinSi
				
				Escribir "Al propietario ", nombre, " de la moto de marca ", marca, " modelo ", modelo, " con cilindraje de ", cilindraje, " y placa ", placa, ".";
				Escribir "Se le informa, que de acuerdo a las observaciones dadas: ", observaciones;
				Escribir "Se realiz� el siguiente trabajo adicional:";
				Escribir "1. ", mantenimiento, motor, frenos, filtro, cadenamoto, novedad;
				Escribir "2. ", arreglo;
				Escribir "3. Y si hubo uilizaci�n de repuestos: ", repuestos;
				Escribir "LISTO! Estamos a su servicio.";
				
			SiNo
				Escribir "Esta moto no puede ingresar al taller EL MAQUINISTA";	
			FinSi
			
			
			
			
		2:
			
				
			
				Escribir "�Cu�l es el cilindraje de la moto a la cual se le dar� salida del taller?";
				Leer cilindraje;
				
				Si cilindraje >= 400 Entonces
					
					Escribir "�Que marca es la moto a la cual se le dar� salida?";
					leer marca;
					
					Escribir "�Que modelo es la moto a la cual se le dar� salida?";
					leer modelo;
					
					Escribir "�Que placa tiene la moto a la cual se le dar� salida?";
					leer placa;
					
					Escribir "�Cu�l es el nombre completo del propietario de la moto?";
					Leer nombre;
					
					Escribir "�Hubo algun arreglo adicional hecho por parte del mec�nico?";
					Escribir "(Escribir Verdadero o Falso, seg�n el caso)";
					leer respuesta_arreglo;
					
					Si respuesta_arreglo = Verdadero Entonces
						Escribir "Describa especificamente que arreglos necesit�";
						leer arreglo;
						Escribir "Al realizar el arreglo, �Necesit� hacer uso de repuestos?";
						Escribir "(Escribir Verdadero o Falso, seg�n el caso)";
						Leer respuesta_repuestos;
						
						Si respuesta_repuestos = Verdadero Entonces
							Escribir "Mencione los respuestos utilizados para el arreglo";
							leer repuestos;
							Escribir "Motocicleta lista para darle salida";
						SiNo
							Escribir "Motocicleta lista para darle salida";
						FinSi
						
					SiNo
						Escribir "Motocicleta lista para darle salida";
					FinSi
					
					Escribir "Al propietario ", nombre, " de la moto de marca ", marca, " modelo ", modelo, " con cilindraje de ", cilindraje, " y placa ", placa, ".";
					Escribir "Se le informa, que de acuerdo a las observaciones dadas y al darle salida a la moto se encontro lo siguiente: ";
					Escribir "- ", arreglo, "...LISTO";
					Escribir "- ", repuestos, "...LISTO";
					Escribir "Estamos a su servicio.";
					
				SiNo
					Escribir "Esta moto no pudo haber ingresado al taller, por lo tanto no se le puede indicar salida, as� que por favor revisar el proceso";
				FinSi
				
		De Otro Modo:
			Escribir "Opci�n incorrecta. Elija una opci�n que est� dentro del men�";
	FinSegun
	
	
FinProceso
