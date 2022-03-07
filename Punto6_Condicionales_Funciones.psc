Proceso Punto6_Condicionales_Funciones
	
	Definir solicitud Como Entero;
	Definir cilindraje Como Entero;
	Definir marca Como Caracter;
	Definir modelo Como Caracter;
	Definir placa Como Caracter;
	Definir nombre Como Caracter;
	Definir observaciones Como Caracter;
	Definir razon Como Entero;
	Definir respuesta Como Logico;
	Definir mantenimiento Como Caracter;
	Definir motor Como Caracter;
	Definir frenos Como Caracter;
	Definir filtro Como Caracter;
	Definir cadenamoto Como Caracter;
	Definir salida Como Logico;
	Definir respuesta_arreglo Como Logico;
	Definir respuesta_repuestos Como Logico;
	Definir arreglo Como Caracter;
	Definir repuestos Como Caracter;
	Definir novedad Como Caracter;
	Definir mg, pm, pfre, pfil, pc Como Caracter;
	
	mantenimiento <- "";
	motor <- "";
	frenos <- "";
	filtro <- "";
	cadenamoto <- "";
	novedad <- "";
	arreglo <- "";
	repuestos <- "";
	respuesta <- Falso;
	respuesta_arreglo <- Falso;
	salida <- Falso;
	
	
	mg <- "Mantenimiento general";
	pm <- "Problema en el motor";
	pfre <- "Problemas con los frenos o cambio de pastas";
	pfil <- "Problema con el filtro o cambio de este";
	pc <- "Problema en la cadena";
	
	Escribir "TALLER DE MOTOS EL MAQUINISTA";
	Escribir "--------------------------------------";
	Escribir "¿Que solicitud desea realizar?";
	Escribir "1. Moto para ingresar al taller";
	Escribir "2. Moto para darle salida del taller";
	leer solicitud;
	Limpiar Pantalla;
	
	Segun solicitud Hacer
		1:
			cilindraje <- saberCilindraje();
			Si cilindraje >= 400 Entonces
				Escribir "¿Que marca es la moto a ingresar?";
				leer marca;
				
				Escribir "¿Que modelo es la moto a ingresar?";
				leer modelo;
				
				Escribir "¿Que placa tiene la moto a ingresar?";
				leer placa;
				
				Escribir "¿Cuál es el nombre completo del propietario de la moto?";
				Leer nombre;
				Limpiar Pantalla;
				
				Escribir "¿Cuáles fueron las observaciones por parte del propietario de la moto?";
				Leer observaciones;
				Escribir "--------------------------------------------------------------------------";
				
				Escribir "Según las observaciones del propietario, la razón por la cual la moto ingreso al taller, se puede clasificar como:";
				Escribir "1. ", mg;
				Escribir "2. ", pm;
				Escribir "3. ", pfre;
				Escribir "4. ", pfil;
				Escribir "5. ", pc;
				Leer razon;
				Limpiar Pantalla;
				
				Segun razon Hacer
					1:
						respuesta <- capturarRespuesta(mg);
						Escribir "--------------------------------------------------------------";
						Si respuesta = Verdadero Entonces
							mantenimiento <- especificarProblema("Describa el mantenimiento general que se le realizará a la moto");
						SiNo
							capturarNovedad();
						FinSi
					2:
						respuesta <- capturarRespuesta(pm);
						Escribir "--------------------------------------------------------------";
						Si respuesta = Verdadero Entonces
							motor <- especificarProblema("Describa el daño del motor que presentaba la moto");
						SiNo
							capturarNovedad();
						FinSi
					3:
						respuesta <- capturarRespuesta(pfre);
						Escribir "--------------------------------------------------------------";
						Si respuesta = Verdadero Entonces
							frenos <- especificarProblema("Especificar el problema de frenos detectado en la moto o si es referente al cambio de pastas, especificar la cantidad cambiada y por cuales se cambio");
						SiNo
							capturarNovedad();
						FinSi
					4:
						respuesta <- capturarRespuesta(pfil);
						Escribir "--------------------------------------------------------------";
						Si respuesta = Verdadero Entonces
							filtro <- especificarProblema("Especificar las anomalias que se presentaron con el filtro o especificar si fue cambio de este");
						SiNo
							capturarNovedad();
						FinSi
					5:
						respuesta <- capturarRespuesta(pc);
						Escribir "--------------------------------------------------------------";
						Si respuesta = Verdadero Entonces
							cadenamoto <- especificarProblema("Describa el problema presentado en la cadena");
						SiNo
							capturarNovedad();
						FinSi
					De Otro Modo:
						Escribir "Eligió una opción incorrecta. Intente de nuevo.";
				FinSegun
				
				Escribir "¿Desea darle salida a la moto?";
				Escribir "(Escribir Verdadero o Falso, según el caso)";
				Leer salida;
				Limpiar Pantalla;
				
				Si salida = Verdadero Entonces
					
					respuesta_arreglo <- preguntar_arreglo();
					Limpiar Pantalla;
					
					Si respuesta_arreglo = Verdadero Entonces
						arreglo <- especificarArreglo();
						respuesta_repuestos <- necesitarRepuestos();
						
						Si respuesta_repuestos = Verdadero Entonces
							repuestos <- mencionarRepuestos();
						SiNo
							Escribir "Motocicleta lista para darle salida";
						FinSi
						
					SiNo
						Escribir "Motocicleta lista para darle salida";
					FinSi
					
					
					
				SiNo
					Escribir "Motocicleta lista para darle salida";
				FinSi
				
				Escribir "--------------------------------------------------------------";
				Escribir "Al propietario ", nombre, " de la moto de marca ", marca, " modelo ", modelo, " con cilindraje de ", cilindraje, " y placa ", placa, ".";
				Escribir "Se le informa, que de acuerdo a las observaciones dadas: ", observaciones;
				Escribir "Se realizó el siguiente trabajo adicional:";
				Escribir "1. ", mantenimiento, motor, frenos, filtro, cadenamoto, novedad;
				Escribir "2. ", arreglo;
				Escribir "3. Y si hubo uilización de repuestos: ", repuestos;
				Escribir "--------------------------------------------------------------";
				Escribir "LISTO! Estamos a su servicio.";
				
			SiNo
				Escribir "Esta moto no puede ingresar al taller EL MAQUINISTA";
			FinSi
		2:
			cilindraje <- saberCilindraje();
			Si cilindraje >= 400 Entonces
				
				Escribir "¿Que marca es la moto a la cual se le dará salida?";
				leer marca;
				
				Escribir "¿Que modelo es la moto a la cual se le dará salida?";
				leer modelo;
				
				Escribir "¿Que placa tiene la moto a la cual se le dará salida?";
				leer placa;
				
				Escribir "¿Cuál es el nombre completo del propietario de la moto?";
				Leer nombre;
				
				respuesta_arreglo <- preguntar_arreglo();
				
				Si respuesta_arreglo = Verdadero Entonces
					arreglo <- especificarArreglo();
					respuesta_repuestos <- necesitarRepuestos();
					
					Si respuesta_repuestos = Verdadero Entonces
						repuestos <- mencionarRepuestos();
					SiNo
						Escribir "Motocicleta lista para darle salida";
						
					FinSi
					
				SiNo
					Escribir "Motocicleta lista para darle salida";
				FinSi
				
				Escribir "--------------------------------------------------------------";
				Escribir "Al propietario ", nombre, " de la moto de marca ", marca, " modelo ", modelo, " con cilindraje de ", cilindraje, " y placa ", placa, ".";
				Escribir "Se le informa, que de acuerdo a las observaciones dadas y al darle salida a la moto se encontro lo siguiente: ";
				Escribir "- ", arreglo, "...LISTO";
				Escribir "- ", repuestos, "...LISTO";
				Escribir "--------------------------------------------------------------";
				Escribir "Estamos a su servicio.";
				
			SiNo
				Escribir "Esta moto no pudo haber ingresado al taller, por lo tanto no se le puede indicar salida, así que por favor revisar el proceso";
			FinSi
			
		De Otro Modo:
			Escribir "Opción incorrecta. Elija una opción que esté dentro del menú";
	FinSegun
	
FinProceso

SubProceso cilindraje <- saberCilindraje()
	Definir cilindraje Como Entero;
	Escribir "¿Cuál es el cilindraje de la moto que se va a ingresar?";
	Leer cilindraje;
FinSubProceso

SubProceso respuesta <- capturarRespuesta(problema)
	Definir respuesta Como Logico;
	
	Escribir "¿La moto solo necesitó ", problema, " ?";
	Escribir "(Responder Verdadero o Falso según el caso)";
	leer respuesta;
FinSubProceso

SubProceso  capturarNovedad()
	Definir novedad Como Caracter;
	Escribir "Describa la novedad encontrada en la motocicleta";
	Leer novedad;
	Escribir "--------------------------------------------------------------";
	Escribir "Guardado en el sistema";
FinSubProceso

SubProceso problemaMoto <- especificarProblema(descripcion)
	Definir problemaMoto Como Caracter;
	Escribir descripcion;
	leer problemaMoto;
	Escribir "--------------------------------------------------------------";
	Escribir "Guardado en el sistema";
FinSubProceso

SubProceso respuesta_arreglo <- preguntar_arreglo()
	Definir respuesta_arreglo Como Logico;
	Escribir "¿Hubo algun arreglo adicional hecho por parte del mecánico?";
	Escribir "(Escribir Verdadero o Falso, según el caso)";
	leer respuesta_arreglo;
FinSubProceso

SubProceso arreglo <- especificarArreglo()
	Definir arreglo Como Caracter;
	Escribir "Describa especificamente que arreglos necesitó";
	leer arreglo;
	Escribir "--------------------------------------------------------------";
FinSubProceso

SubProceso respuesta_repuestos <- necesitarRepuestos()
	Definir respuesta_repuestos Como Logico;
	Escribir "Al realizar el arreglo, ¿Necesitó hacer uso de repuestos?";
	Escribir "(Escribir Verdadero o Falso, según el caso)";
	Leer respuesta_repuestos;
	Escribir "--------------------------------------------------------------";
FinSubProceso

SubProceso repuestos <- mencionarRepuestos()
	Definir repuestos Como Caracter;
	Escribir "Mencione los respuestos utilizados para el arreglo";
	leer repuestos;
	Escribir "--------------------------------------------------------------";
	Escribir "Motocicleta lista para darle salida";
FinSubProceso
	