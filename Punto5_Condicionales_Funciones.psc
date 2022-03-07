Proceso Punto5_Condicionales_Funciones
	Definir categoriaproducto Como Entero;
	Definir medicamentos como Entero; 
	Definir Advil, Dolex, Pax, Acetaminofen, Noxpirin, Ibuprofeno, Desodorante, Shampoo Como Caracter;
	Definir solicitud Como entero;
	Definir devolucion Como Entero;
	
	Advil <- "$13.000";
	Dolex <- "$16.000";
	Pax <- "$3.000";
	Acetaminofen <- "$10.000";
	Noxpirin <- "$14.000";
	Ibuprofeno <- "$6.000";
	Desodorante <- "$11.000";
	Shampoo <- "$20.000";
	
	Escribir "BIENVENIDO A LA DROGUERÍA MI SALUD";
	Escribir "--------------------------------------------";
	
	solicitud <- capturar_respuesta("Comprar un medicamento o producto", "Devolución de un producto");
	Limpiar Pantalla;
	
	Si solicitud = 1 Entonces
		
		categoriaproducto <- elegir_categoria_del_producto("Medicamentos para ");
		
		Segun categoriaproducto Hacer
			1:
				medicamentos <- comprarMedicamento("Advil", "Dolex", Advil, Dolex);
			2:
				medicamentos <- comprarMedicamento("Pax", "Noxpirin", Pax, Noxpirin);
			3:
				medicamentos <- comprarMedicamento("Acetaminofen", "Ibuprofeno", Acetaminofen, Ibuprofeno);
			4: 
				medicamentos <- comprarMedicamento("Desodorante", "Shampoo para el cabello", Desodorante, Shampoo);
			De Otro Modo:
				Escribir "Opción incorrecta. Por favor marque una opcion que este designada";
		FinSegun
		
	SiNo
		Escribir "¿Cuál es el producto o medicamento que desea devolver?";
		Escribir "1. Advil";
		Escribir "2. Dolex";
		Escribir "3. Pax";
		Escribir "4. Noxpirin";
		Escribir "5. Acetaminofen";
		Escribir "6. Ibuprofeno";
		Escribir "7. Desodorante";
		Escribir "8. Shampoo para el Cabello";
		
		leer devolucion;
		Escribir "------------------------------------------------------------------------";
		Segun devolucion Hacer
			1:
				imprimirDevolucion("Advil");
			2:
				imprimirDevolucion("Dolex");
			3:
				imprimirDevolucion("Pax");
			4:
				imprimirDevolucion("Noxpirin");
			5:
				imprimirDevolucion("Acetaminofen");
			6:
				imprimirDevolucion("Ibuprofeno");
			7:
				imprimirDevolucion("Desodorante");
			8:
				imprimirDevolucion("Shampoo");
				
			De Otro Modo:
				Escribir "Devolución no válida";
				
		FinSegun
	FinSi
	
FinProceso

SubProceso respuesta <- capturar_respuesta(mensaje1, mensaje2)
	Definir respuesta Como Entero;
	Escribir "¿Cuál es la soliciud que desea realizar?";
	Escribir "1. ", mensaje1;
	Escribir "2. ", mensaje2;
	leer respuesta;
FinSubProceso

SubProceso categoria <- elegir_categoria_del_producto(mensaje)
	Definir categoria Como Entero;
	Definir M1, M2, M3, M4 Como Caracter;
	M1 <- "el dolor de cabeza";
	M2 <- "la gripa";
	M3 <- "el malestar general";
	M4 <- "la higiene personal";
	
	Escribir "¿Que categoría de productos quisieras ver?";
	Escribir "(Elije 1, 2, 3 o 4 según el caso)";
	Escribir "1. ", mensaje, M1;
	Escribir "2. ", mensaje, M2;
	Escribir "3. ", mensaje, M3;
	Escribir "4. Productos para ", M4;
	
	leer categoria;
	Limpiar Pantalla;
	
FinSubProceso

SubProceso medicamento <- comprarMedicamento(medicamento1, medicamento2, precioM1, precioM2)
	
	Definir medicamento Como Entero;
	Definir precioMedicamento Como Caracter;
	Definir M1, M2, M3, M4 Como Caracter;
	M1 <- "el dolor de cabeza";
	M2 <- "la gripa";
	M3 <- "el malestar general";
	M4 <- "la higiene personal";
	
	Escribir "Los medicamentos disponibles para ", M1, " son:";
	Escribir "1. ", medicamento1;
	Escribir "2. ", medicamento2;
	Escribir "Si deseas comprar alguno de estos productos, escribe 1 o 2 según el que necesites";
	leer medicamento;
	Limpiar Pantalla;
	
	Segun medicamento Hacer
		1:
			Escribir "El precio del ", medicamento1, " es: ", precioM1;
			Escribir "-------------------------------------------------";
			Escribir "¿Deseas comprarlo?";
			leer precioMedicamento;
			Si (precioMedicamento = "si") o (precioMedicamento = "Si")  Entonces
				Escribir "HECHO! Producto comprado";
			SiNo
				Escribir "Puedes mirar otros productos";
			FinSi
		2:
			Escribir "El precio del ", medicamento2 ," es: ", precioM2;
			Escribir "-------------------------------------------------";
			Escribir "¿Deseas comprarlo?";
			leer precioMedicamento;
			Si (precioMedicamento = "si") o (precioMedicamento = "Si")  Entonces
				Escribir "HECHO! Producto comprado";
			SiNo
				Escribir "Puedes mirar otros productos";
			FinSi
		De Otro Modo:
			Escribir "No tenemos ese medicamento en stock";
	FinSegun
FinSubProceso

SubProceso imprimirDevolucion(medicamento)
	Escribir medicamento, " en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
FinSubProceso
	