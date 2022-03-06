Proceso sin_titulo
	
	Definir nombre1, nombre2, nombre3 Como Caracter;
	Definir telefono1, telefono2, telefono3 Como Real;
	Definir organizacion1, organizacion2, organizacion3 Como Caracter;
	Definir i Como Entero;
	Definir opcionDeBusqueda Como entero;
	Definir busquedaNombre, nombrecontacto como caracter;
	Definir busquedaTelefono Como Real;
	definir numeroDeTelefono Como Real;
	numeroDeTelefono <- 0;
	nombrecontacto <- "";
	
	Definir solicitud Como Entero;
	
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	telefono1 <- 0;
	telefono2 <- 0;
	telefono3 <- 0;
	organizacion1 <- "";
	organizacion2 <- "";
	organizacion3 <- "";
	
	Escribir "BIENVENIDO";
	
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		
		Escribir "=======================================================";
		Escribir "PARA AGREGAR CONTACTO #", i;
		Escribir "-------------------------------------------------------";
		Escribir "Escribe el nombre completo: ";
		
		
		
		
		Si nombre1 = "" Entonces
			leer nombre1;
		SiNo
			Si nombre2= "" Entonces
				leer nombre2;
			SiNo
				si nombre3 = "" Entonces
					Leer nombre3;
				FinSi
			FinSi
		FinSi
		
		Escribir "¿Cuál es su número telefónico?";
		
	
		leer numeroDeTelefono;
		mientras (numeroDeTelefono = telefono1) O (numeroDeTelefono = telefono2) Hacer
			Escribir "Este numero de telefono ya existe. Por favor ingrese otro:";
			leer numeroDeTelefono;
			
		FinMientras
		
		
		Si telefono1 = 0 Entonces
			telefono1 <- numeroDeTelefono;
		SiNo
			Si telefono2= 0 Entonces
				telefono2 <- numeroDeTelefono;
			SiNo
				si telefono3 = 0 Entonces
					telefono3 <- numeroDeTelefono;
				FinSi
			FinSi
		FinSi
		
		Escribir "¿En que organización podría ubicar a este contacto?";
		
		Si organizacion1 = "" Entonces
			Leer organizacion1;
		SiNo
			Si organizacion2 = "" Entonces
				Leer organizacion2;
			SiNo
				Si organizacion3 = "" Entonces
					Leer organizacion3;
				FinSi
			FinSi
		FinSi
		
		
	FinPara
	
	
	
	Repetir
		
		
		Escribir "=======================================================";
		Escribir "¿Que otra solicitud desea procesar?";
		Escribir "1. Buscar contactos almacenados";
		Escribir "2. Eliminar algún contacto ";
		Escribir "3. Salir del sistema";
		Leer solicitud;
		
		Limpiar Pantalla;
		
		Segun solicitud Hacer
			1:
				Escribir "¿Cómo desea buscar su contacto?";
				Escribir "1. Nombre";
				Escribir "2. Telefono";
				leer opcionDeBusqueda;
				
				Limpiar Pantalla;
				
				si opcionDeBusqueda = 1 Entonces
					
					Escribir "Ingrese el nombre del contacto que desea buscar";
					Leer busquedaNombre;
					
					si busquedaNombre = nombre1 Entonces
						Escribir "El contacto que esta buscando es:";
						Escribir "-------------------------------------------------------";
						Escribir "Nombre: ", nombre1;
						Escribir "Telefono: ", telefono1;
						Escribir "Organización: ", organizacion1;
					sino 
						si busquedaNombre = nombre2 Entonces
							Escribir "El contacto que esta buscando es:";
							Escribir "-------------------------------------------------------";
							Escribir "Nombre: ", nombre2;
							Escribir "Telefono: ", telefono2;
							Escribir "Organización: ", organizacion2;
						SiNo
							Si busquedaNombre = nombre3 Entonces
								Escribir "El contacto que esta buscando es:";
								Escribir "-------------------------------------------------------";
								Escribir "Nombre: ", nombre3;
								Escribir "Telefono: ", telefono3;
								Escribir "Organización: ", organizacion3;
							Sino
								Escribir "Ese nombre NO EXISTE.";
							FinSi
						FinSi
					FinSi
				SiNo
					Escribir "Ingrese el numero del contacto que desea buscar";
					Leer busquedaTelefono;
					
					Si busquedaTelefono = telefono1 Entonces
						Escribir "El contacto que esta buscando es:";
						Escribir "-------------------------------------------------------";
						Escribir "Nombre: ", nombre1;
						Escribir "Telefono: ", telefono1;
						Escribir "Organización: ", organizacion1;
					SiNo
						Si busquedaTelefono = telefono2 Entonces
							Escribir "El contacto que esta buscando es:";
							Escribir "-------------------------------------------------------";
							Escribir "Nombre: ", nombre2;
							Escribir "Telefono: ", telefono2;
							Escribir "Organización: ", organizacion2;
						SiNo
							Si busquedaTelefono = telefono3 Entonces
								Escribir "El contacto que esta buscando es:";
								Escribir "-------------------------------------------------------";
								Escribir "Nombre: ", nombre3;
								Escribir "Telefono: ", telefono3;
								Escribir "Organización: ", organizacion3;
							SiNo
								Escribir "Ese número NO EXISTE";
							FinSi
						FinSi
					FinSi
					
					
				FinSi
			2:
				Escribir "¿Cuál es el nombre del contacto que deseas eliminar?";
				Leer nombrecontacto;
				
				Limpiar Pantalla;
				
				mientras (nombrecontacto <> nombre1) Y (nombrecontacto <> nombre2) Y (nombrecontacto <> nombre3) Hacer
					Escribir "Este nombre de contacto no existe en la lista. Por favor ingrese uno que si se encuentre.";
					leer nombrecontacto;
					
				FinMientras
				
				Si nombrecontacto = nombre1 Entonces
					Escribir "CONTACTO #1";
					Escribir "-------------------------------------------------------";
					Escribir "Nombre: ", nombre1;
					Escribir "Telefono: ", telefono1;
					Escribir "Organización: ", organizacion1;
					Escribir "-------------------------------------------------------";
					Escribir "HA SIDO ELIMINADO";
					nombre1 <- "";
					telefono1 <- 0;
					organizacion1 <- "";
					
				SiNo
					
					Si nombrecontacto = nombre2 Entonces
						
						Escribir "CONTACTO #2";
						Escribir "-------------------------------------------------------";
						Escribir "Nombre: ", nombre2;
						Escribir "Telefono: ", telefono2;
						Escribir "Organización: ", organizacion2;
						Escribir "-------------------------------------------------------";
						Escribir "HA SIDO ELIMINADO";
						nombre2 <- "";
						telefono2 <- 0;
						organizacion2 <- "";
						
					SiNo
						
						Si nombrecontacto = nombre3 Entonces
							
							Escribir "CONTACTO #3";
							Escribir "-------------------------------------------------------";
							Escribir "Nombre: ", nombre3;
							Escribir "Telefono: ", telefono3;
							Escribir "Organización: ", organizacion3;
							Escribir "-------------------------------------------------------";
							Escribir "HA SIDO ELIMINADO";
							nombre3 <- "";
							telefono3 <- 0;
							organizacion3 <- "";
							
						FinSi
						
					FinSi
					
				FinSi
				
			3:
				
				Escribir "¡VUELVA PRONTO!";
			De Otro Modo:
				solictud <- 3;
		FinSegun
	Hasta Que solicitud = 3;
	
FinProceso
