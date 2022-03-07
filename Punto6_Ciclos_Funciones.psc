Proceso Punto6_Ciclos_Funciones
	
	Definir nombre1, nombre2, nombre3 Como Caracter;
	Definir telefono1, telefono2, telefono3 Como Caracter;
	Definir organizacion1, organizacion2, organizacion3 Como Caracter;
	Definir i Como Entero;
	Definir opcionDeBusqueda Como entero;
	Definir busquedaNombre, nombrecontacto como caracter;
	Definir busquedaTelefono Como Caracter;
	definir numeroDeTelefono Como Caracter;
	numeroDeTelefono <- "";
	nombrecontacto <- "";
	
	Definir solicitud Como Entero;
	
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	organizacion1 <- "";
	organizacion2 <- "";
	organizacion3 <- "";
	
	Escribir "BIENVENIDO";
	
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
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
		Si telefono1 = "" Entonces
			telefono1 <- numeroDeTelefono;
		SiNo
			Si telefono2= "" Entonces
				telefono2 <- numeroDeTelefono;
			SiNo
				si telefono3 = "" Entonces
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
		solicitud <- elegir();
		
		Limpiar Pantalla;
		Segun solicitud Hacer
			1:
				opcionDeBusqueda <- comoBuscar();
				Limpiar Pantalla;
				
				Si opcionDeBusqueda = 1 Entonces
					
					busquedaNombre <- buscarContacto("nombre");
					Si busquedaNombre = nombre1 Entonces
						imprimirContacto(nombre1, telefono1, organizacion1);
					SiNo
						Si busquedaNombre = nombre2 Entonces
							imprimirContacto(nombre2, telefono2, organizacion2);
						SiNo
							Si busquedaNombre = nombre2 Entonces
								imprimirContacto(nombre3, telefono3, organizacion3);
							SiNo
								Escribir "Ese nombre NO EXISTE.";
							FinSi
						FinSi
					FinSi
				SiNo
					busquedaTelefono <- buscarContacto("número");
					Si busquedaTelefono = telefono1 Entonces
						imprimirContacto(nombre1, telefono1, organizacion1);
					SiNo
						Si busquedaTelefono = telefono2 Entonces
							imprimirContacto(nombre2, telefono2, organizacion2);
						SiNo
							Si busquedaTelefono = telefono3 Entonces
								imprimirContacto(nombre3, telefono3, organizacion3);
							SiNo
								Escribir "Ese número NO EXISTE.";
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
					eliminarContacto("1", nombre1, telefono1, organizacion1);
					nombre1 <- "";
					telefono1 <- "";
					organizacion1 <- "";
				SiNo
					Si nombrecontacto = nombre2 Entonces
						eliminarContacto("2", nombre2, telefono2, organizacion2);
						nombre2 <- "";
						telefono2 <- "";
						organizacion2 <- "";
					SiNo
						eliminarContacto("3", nombre3, telefono3, organizacion3);
						nombre3 <- "";
						telefono3 <- "";
						organizacion3 <- "";
					FinSi
				FinSi
			3:
				Escribir "¡VUELVA PRONTO!";
			De Otro Modo:
				solictud <- 3;
		FinSegun
		
	Hasta Que solicitud = 3;
	
FinProceso

SubProceso solicitud <- elegir()
	Definir solicitud Como Entero;
	Escribir "¿Que otra solicitud desea procesar?";
	Escribir "1. Buscar contactos almacenados";
	Escribir "2. Eliminar algún contacto ";
	Escribir "3. Salir del sistema";
	Leer solicitud;
FinSubProceso

SubProceso opcion <- comoBuscar()
	Definir opcion Como Entero;
	Escribir "¿Cómo desea buscar su contacto?";
	Escribir "1. Nombre";
	Escribir "2. Telefono";
	leer opcion;
FinSubProceso

SubProceso busqueda <- buscarContacto(contacto)
	Definir busqueda Como Caracter;
	Escribir "Ingrese el ", contacto," del contacto que desea buscar";
	Leer busqueda;
FinSubProceso

SubProceso imprimirContacto(nombre, telefono, organizacion)
	Escribir "El contacto que esta buscando es:";
	imprimir_Info_Contacto(nombre, telefono, organizacion);
FinSubProceso

SubProceso eliminarContacto(posicion, nombre, telefono, organizacion)
	Escribir "CONTACTO #", posicion;
	imprimir_Info_Contacto(nombre, telefono, organizacion);
	Escribir "-------------------------------------------------------";
	Escribir "HA SIDO ELIMINADO";
FinSubProceso

SubProceso imprimir_Info_Contacto(nombre, telefono, organizacion)
	Escribir "-------------------------------------------------------";
	Escribir "Nombre: ", nombre;
	Escribir "Telefono: ", telefono;
	Escribir "Organización: ", organizacion;
	
FinSubProceso
