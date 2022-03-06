Proceso Punto7_Taller3
	
	Definir nombre1, nombre2, nombre3, nombre4, nombre5 Como Caracter;
	Definir placa, placa1, placa2, placa3, placa4, placa5 Como Caracter;
	Definir marca1, marca2, marca3, marca4, marca5 Como Caracter;
	Definir retirarplaca Como Caracter;
	Definir buscarplaca Como Caracter;
	Definir telefono1, telefono2, telefono3, telefono4, telefono5 Como Entero;
	Definir opcionmenu, masvehiculos Como Entero;
	Definir vehiculos Como Entero;
	
	masvehiculos <- 1;
	vehiculos <- 0;
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	nombre4 <- "";
	nombre5 <- "";
	telefono1 <- 0;
	telefono2 <- 0;
	telefono3 <- 0;
	telefono4 <- 0;
	telefono5 <- 0;
	placa1 <- "";
	placa2 <- "";
	placa3 <- "";
	placa4 <- "";
	placa5 <- "";
	marca1 <- "";
	marca2 <- "";
	marca3 <- "";
	marca4 <- "";
	marca5 <- "";
	
	Repetir
		
		Escribir "¡BIENVENIDO AL PARQUEADERO EL GUARDIÁN!";
		Escribir "============================================";
		
		Escribir "Indique que solicitud desea realizar";
		Escribir "1. Ingresar Vehiculo";
		Escribir "2. Retirar del parqueadero";
		Escribir "3. Consultar vehículo dentro del parqueadero";
		Escribir "4. Salir";
		
		Leer opcionmenu;
		
		Segun opcionmenu Hacer
			1:
				
				Si vehiculos = 5 Entonces
					Escribir  "Ya ingreso el número máximo de vehículos.";
					
				SiNo
					
					Mientras (vehiculos <= 5) Y (masvehiculos = 1) Hacer
						
						
						Si vehiculos = 5 Entonces
							Escribir  "Ya ingreso el número máximo de vehículos.";
						SiNo
							
							Escribir "Ingrese el nombre del propietario del vehículo";
							
							Si nombre1 = "" Entonces
								Leer nombre1;
							SiNo
								Si nombre2 = "" Entonces
									Leer nombre2;
								SiNo
									Si nombre3 = "" Entonces
										Leer nombre3;
									SiNo
										Si nombre4 = "" Entonces
											Leer nombre4;
										SiNo
											Si nombre5 = "" Entonces
												Leer nombre5;
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
							
							Escribir "Ingrese el número telefónico del propietario del vehículo";
							
							Si telefono1 = 0 Entonces
								Leer telefono1;
							SiNo
								Si telefono2 = 0 Entonces
									Leer telefono2;
								SiNo
									Si telefono3 = 0 Entonces
										Leer telefono3;
									SiNo
										Si telefono4 = 0 Entonces
											Leer telefono4;
										SiNo
											Si telefono5 = 0 Entonces
												Leer telefono5;
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
							
							Escribir "¿Cuál es la placa del vehículo?";
							
							Leer placa;
							Mientras (placa = placa1) O (placa = placa2) O (placa = placa3) O (placa = placa4) O (placa = placa5) Hacer
								Escribir "Esta placa ya se encuentra registrada.";
								Leer placa;
							FinMientras
							
							Si placa1 = "" Entonces
								placa1 <- placa;
							SiNo
								Si placa2 = "" Entonces
									placa2 <- placa;
								SiNo
									Si placa3 = "" Entonces
										placa3 <- placa;
									SiNo
										Si placa4 = "" Entonces
											placa4 <- placa;
										SiNo
											Si placa5 = "" Entonces
												placa5 <- placa;
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
							
							Escribir "¿Que marca es el vehículo?";
							
							Si marca1 = "" Entonces
								Leer marca1;
							SiNo
								Si marca2 = "" Entonces
									Leer marca2;
								SiNo
									Si marca3 = "" Entonces
										Leer marca3;
									SiNo
										Si marca4 = "" Entonces
											Leer marca4;
										SiNo
											Si marca5 = "" Entonces
												Leer marca5;
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
							
							vehiculos <- vehiculos + 1;
							
							Si (vehiculos <= 4) Entonces
								Escribir "============================================";
								Escribir "¿Desea ingresar más vehículos?";
								Escribir "1. Si";
								Escribir "2. Deseo salir al menú principal";
								Escribir "(Escriba 1 o 2 según su caso)";
								Leer masvehiculos;
								Escribir "============================================";
								
								Si masvehiculos = 1 Entonces
									Escribir "A continuación podrá ingresar más vehículos";
									Escribir "--------------------------------------------";
								SiNo
									Escribir "--------------------------------------------";
								FinSi
							SiNo
								masvehiculos <- 2;
								
							FinSi
							
						FinSi
					FinMientras
					
				FinSi
				
				masvehiculos <- 1;
				
			2:
				Escribir "Ingrese la placa del vehiculo que se va a retirar del parqueadero";
				Leer retirarplaca;
				
				Mientras (retirarplaca <> placa1) Y (retirarplaca <> placa2) Y (retirarplaca <> placa3) Y (retirarplaca <> placa4) Y (retirarplaca <> placa5) Hacer
					Escribir "Esa placa nunca se ingreso al parqueadero EL GUARDIÁN";
					Escribir "Por favor escriba una que si haya sido ingresada";
					Leer retirarplaca;
				FinMientras
				
				Si retirarplaca = placa1 Entonces
					Escribir "--------------------------------------------";
					Escribir "Vehiculo ", marca1, " de placa ", placa1;
					Escribir "Propietario: ", nombre1, " con número de contacto ", telefono1;
					Escribir "VEHÍCULO RETIRADO DEL PARQUEADERO";
					Escribir "============================================";
					marca1 <- "";
					placa1 <- "";
					nombre1 <- "";
					telefono1 <- 0;
					
				SiNo
					Si retirarplaca = placa2 Entonces
						Escribir "--------------------------------------------";
						Escribir "Vehiculo ", marca2, " de placa ", placa2;
						Escribir "Propietario: ", nombre2, " con número de contacto ", telefono2;
						Escribir "VEHÍCULO RETIRADO DEL PARQUEADERO";
						Escribir "============================================";
						marca2 <- "";
						placa2 <- "";
						nombre2 <- "";
						telefono2 <- 0;
					SiNo
						Si retirarplaca = placa3 Entonces
							Escribir "--------------------------------------------";
							Escribir "Vehiculo ", marca3, " de placa ", placa3;
							Escribir "Propietario: ", nombre3, " con número de contacto ", telefono3;
							Escribir "VEHÍCULO RETIRADO DEL PARQUEADERO";
							Escribir "============================================";
							marca3 <- "";
							placa3 <- "";
							nombre3 <- "";
							telefono3 <- 0;
						SiNo
							Si retirarplaca = placa4 Entonces
								Escribir "--------------------------------------------";
								Escribir "Vehiculo ", marca4, " de placa ", placa4;
								Escribir "Propietario: ", nombre4, " con número de contacto ", telefono4;
								Escribir "VEHÍCULO RETIRADO DEL PARQUEADERO";
								Escribir "============================================";
								marca4 <- "";
								placa4 <- "";
								nombre4 <- "";
								telefono4 <- 0;
							SiNo
								Si retirarplaca = placa5 Entonces
									Escribir "--------------------------------------------";
									Escribir "Vehiculo ", marca5, " de placa ", placa5;
									Escribir "Propietario: ", nombre5, " con número de contacto ", telefono5;
									Escribir "VEHÍCULO RETIRADO DEL PARQUEADERO";
									Escribir "============================================";
									marca5 <- "";
									placa5 <- "";
									nombre5 <- "";
									telefono5 <- 0;
								FinSi
								
							FinSi
						FinSi
					FinSi
				FinSi
				
				
			3:
				Escribir "¿Cuál es la placa del vehículo que desea buscar?";
				Leer buscarplaca;
				
				Si buscarplaca = placa1 Entonces
					Escribir "El vehículo buscado es:";
					Escribir "--------------------------------------------";
					Escribir "Marca: ", marca1;
					Escribir "Placa: ", placa1;
					Escribir "Nombre del Propietario: ", nombre1;
					Escribir "Telefono del Propietario: ", telefono1;
					Escribir "============================================";
				SiNo
					Si buscarplaca = placa2 Entonces
						Escribir "El vehículo buscado es:";
						Escribir "--------------------------------------------";
						Escribir "Marca: ", marca2;
						Escribir "Placa: ", placa2;
						Escribir "Nombre del Propietario: ", nombre2;
						Escribir "Telefono del Propietario: ", telefono2;
						Escribir "============================================";
					SiNo
						Si buscarplaca = placa3 Entonces
							Escribir "El vehículo buscado es:";
							Escribir "--------------------------------------------";
							Escribir "Marca: ", marca3;
							Escribir "Placa: ", placa3;
							Escribir "Nombre del Propietario: ", nombre3;
							Escribir "Telefono del Propietario: ", telefono3;
							Escribir "============================================";
						SiNo
							Si buscarplaca = placa4 Entonces
								Escribir "El vehículo buscado es:";
								Escribir "--------------------------------------------";
								Escribir "Marca: ", marca4;
								Escribir "Placa: ", placa4;
								Escribir "Nombre del Propietario: ", nombre4;
								Escribir "Telefono del Propietario: ", telefono4;
								Escribir "============================================";
							SiNo
								Si buscarplaca = placa5 Entonces
									Escribir "El vehículo buscado es:";
									Escribir "--------------------------------------------";
									Escribir "Marca: ", marca5;
									Escribir "Placa: ", placa5;
									Escribir "Nombre del Propietario: ", nombre5;
									Escribir "Telefono del Propietario: ", telefono5;
									Escribir "============================================";
								SiNo
									Escribir "Esa placa nunca fue ingresada al parqueadero EL GUARDIÁN";
									Escribir "============================================";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
			De Otro Modo:
				opcionmenu <- 4;
				Escribir "============================================";
				Escribir "Salió del programa. VUELVA PRONTO.";
		FinSegun
		
	Hasta Que opcionmenu = 4
	
	
FinProceso
