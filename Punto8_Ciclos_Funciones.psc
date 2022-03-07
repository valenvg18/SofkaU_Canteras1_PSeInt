Proceso Punto8_Ciclos_Funciones
	
	Definir opcionmenu Como Entero;
	Definir usuarios, masusuarios Como Entero;
	Definir usuario, us1, us2, us3, us4, us5, us6, us7, us8 Como Caracter;
	Definir aprobo Como Caracter;
	Definir buscarnombre Como Caracter;
	Definir Estado1, Estado2, Estado3, Estado4, Estado5, Estado6, Estado7, Estado8 Como Caracter;
	
	masusuarios <- 1;
	usuarios <- 0;
	us1 <- "";
	us2 <- "";
	us3 <- "";
	us4 <- "";
	us5 <- "";
	us6 <- "";
	us7 <- "";
	us8 <- "";
	Estado1 <- "";
	Estado2 <- "";
	Estado3 <- "";
	Estado4 <- "";
	Estado5 <- "";
	Estado6 <- "";
	Estado7 <- "";
	Estado8 <- "";
	
	Repetir
		
		Escribir "==============================================";
		Escribir "ESCUELA AUTOMOVILÍSTICA - EL MAESTRO";
		Escribir "----------------------------------------------";
		
		Escribir "¿Cuál es la solicitud que desea realizar?";
		Escribir "1. Registrar Usuarios";
		Escribir "2. Consultar Usuarios";
		Escribir "3. Salir";
		
		Leer opcionmenu;
		
		Segun opcionmenu Hacer
			1:
				Si (usuarios = 8)  Entonces
					Escribir "==============================================";
					Escribir "Ya ingreso el máximo de usuarios";
					Escribir "--------------------------------------------";
				SiNo
					
					Mientras (usuarios <= 8) Y (masusuarios = 1) Hacer
						
						usuario <- ingresardato("Ingrese el nombre del usuario");
						
						Mientras (usuario = us1) O (usuario = us2) O (usuario = us3) O (usuario = us4) O (usuario = us5) O (usuario = us6) O (usuario = us7) O (usuario = us8) Hacer
							usuario <- ingresardato("Ese usuario ya se encuentra registrado.");
						FinMientras
						
						Si us1 = "" Entonces
							us1 <- usuario;
						SiNo
							Si us2 = "" Entonces
								us2 <- usuario;
							SiNo
								Si us3 = "" Entonces
									us3 <- usuario;
								SiNo
									Si us4 = "" Entonces
										us4 <- usuario;
									SiNo
										Si us5 = "" Entonces
											us5 <- usuario;
										SiNo
											Si us6 = "" Entonces
												us6 <- usuario;
											SiNo
												Si us7 = "" Entonces
													us7 <- usuario;
												SiNo
													Si us8 = "" Entonces
														us8 <- usuario;
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						Escribir "Responda SI o NO, según el caso";
						aprobo <- ingresardato("¿Este usuario aprobó el curso?");
						
						Si aprobo = "SI" O aprobo = "si" Entonces
							
							Si usuario = us1 Entonces
								Estado1 <- "Estado de la licencia APROBADO";
							SiNo
								Si usuario = us2 Entonces
									Estado2 <- "Estado de la licencia APROBADO";
								SiNo
									Si usuario = us3 Entonces
										Estado3 <- "Estado de la licencia APROBADO";
									SiNo
										Si usuario = us4 Entonces
											Estado4 <- "Estado de la licencia APROBADO";
										SiNo
											Si usuario = us5 Entonces
												Estado5 <- "Estado de la licencia APROBADO";
											SiNo
												Si usuario = us6 Entonces
													Estado6 <- "Estado de la licencia APROBADO";
												SiNo
													Si usuario = us7 Entonces
														Estado7 <- "Estado de la licencia APROBADO";
													SiNo
														Si usuario = us8 Entonces
															Estado8 <- "Estado de la licencia APROBADO";
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
							
						SiNo
							
							Si usuario = us1 Entonces
								Estado1 <- "Estado de la licencia DENEGADO";
							SiNo
								Si usuario = us2 Entonces
									Estado2 <- "Estado de la licencia DENEGADO";
								SiNo
									Si usuario = us3 Entonces
										Estado3 <- "Estado de la licencia DENEGADO";
									SiNo
										Si usuario = us4 Entonces
											Estado4 <- "Estado de la licencia DENEGADO";
										SiNo
											Si usuario = us5 Entonces
												Estado5 <- "Estado de la licencia DENEGADO";
											SiNo
												Si usuario = us6 Entonces
													Estado6 <- "Estado de la licencia DENEGADO";
												SiNo
													Si usuario = us7 Entonces
														Estado7 <- "Estado de la licencia DENEGADO";
													SiNo
														Si usuario = us8 Entonces
															Estado8 <- "Estado de la licencia DENEGADO";
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						usuarios <- usuarios + 1;
						
						
						Si (usuarios <= 7) Entonces
							Escribir "============================================";
							Escribir "¿Desea registrar mas usuarios?";
							Escribir "1. Si";
							Escribir "2. Deseo salir al menú principal";
							Escribir "(Escriba 1 o 2 según su caso)";
							Leer masusuarios;
							Escribir "============================================";
							
							Si masusuarios = 1 Entonces
								Escribir "A continuación podrá registrar mas usuarios";
								Escribir "--------------------------------------------";
								
							FinSi
						SiNo
							masusuarios <- 2;
							
						FinSi
						
					FinMientras
					
				FinSi
				
				masusuarios <- 1;
			2:
				buscarnombre <- ingresardato("Escriba el nombre del usuario qeu desea consultar");
				
				Si buscarnombre = us1 Entonces
					Escribir "El estudiante ", us1, " tiene ", Estado1;
				SiNo
					Si buscarnombre = us2 Entonces
						Escribir "El estudiante ", us2, " tiene ", Estado2;
					SiNo
						Si buscarnombre = us3 Entonces
							Escribir "El estudiante ", us3, " tiene ", Estado3;
						SiNo
							Si buscarnombre = us4 Entonces
								Escribir "El estudiante ", us4, " tiene ", Estado4;
							SiNo
								Si buscarnombre = us5 Entonces
									Escribir "El estudiante ", us5, " tiene ", Estado5;
								SiNo
									Si buscarnombre = us6 Entonces
										Escribir "El estudiante ", us6, " tiene ", Estado6;
									SiNo
										Si buscarnombre = us7 Entonces
											Escribir "El estudiante ", us7, " tiene ", Estado7;
										SiNo
											Si buscarnombre = us8 Entonces
												Escribir "El estudiante ", us8, " tiene ", Estado8;
											SiNo
												Escribir "Ese nombre no ha sido registrado en la escuela automovilística";
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
			De Otro Modo:
				opcionmenu <- 3;
				Escribir "Ha salido del sistema. ¡NOS VEMOS PRONTO!";
		FinSegun
		
	Hasta Que opcionmenu = 3
	
FinProceso

SubProceso estado <- imprimirEstado_Licencia(estadoAoD)
	Definir estado Como Caracter;
	Escribir "Estado de la licencia ", estadoAoD;
FinSubProceso

SubProceso persona <- ingresardato(mensaje)
	Definir persona Como Caracter;
	Escribir mensaje;
	Leer persona;
FinSubProceso
	