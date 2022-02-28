Proceso Punto5_Taller2
	
	Escribir "BIENVENIDO A LA DROGUERÍA MI SALUD";
	
	Definir categoriaproducto Como Entero;
	Definir medicamentos como Entero; 
	Definir opcion Como Caracter;
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
	
	Escribir "¿Cuál es la soliciud que desea realizar?";
	Escribir "1. Comprar un medicamento o producto";
	Escribir "2. Devolución de un producto";
	leer solicitud;
	
	Si solicitud = 1 Entonces
		
		Escribir "¿Que categoría de productos quisieras ver?";
		Escribir "(Elije 1, 2, 3 o 4 según el caso)";
		Escribir "1. Medicamentos para el dolor de cabeza";
		Escribir "2. Medicamentos para la gripa";
		Escribir "3. Medicamentos para el malestar general";
		Escribir "4. Productos de higiene personal";
	
		leer categoriaproducto;
	
	
		Segun categoriaproducto Hacer
		1:
			Escribir "Los medicamentos disponibles para el dolor de cabeza son:";
			Escribir "1. Advil";
			Escribir "2. Dolex";
			Escribir "Si deseas comprar alguno de estos productos, escribe 1 o 2 según el que necesites";
			leer medicamentos;
			
			Segun medicamentos Hacer
				1:
					Escribir "El precio del Advil es: ", Advil;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				2:
					Escribir "El precio del Dolex es: ", Dolex;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				De Otro Modo:
					Escribir "No tenemos ese medicamento para la cabeza en stock";
			FinSegun
			
		2:
			Escribir "Los medicamentos disponibles para la gripa son:";
			Escribir "1. Acetaminofen";
			Escribir "2. Noxpirin";
			Escribir "Si deseas comprar alguno de estos productos, escribe 1 o 2 según el que necesites";
			leer medicamentos;
			
			Segun medicamentos Hacer
				1:
					Escribir "El precio del Pax es: ", Pax;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				2:
					Escribir "El precio del Noxpirin es: ", Noxpirin;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				De Otro Modo:
					Escribir "No tenemos ese medicamento para la gripa en stock";
			FinSegun
			
		3:
			Escribir "Los medicamentos disponibles para el malestar en general son:";
			Escribir "1. Acetaminofen";
			Escribir "2. Ibuprofeno";
			Escribir "Si deseas comprar alguno de estos productos, escribe 1 o 2 según el que necesites";
			leer medicamentos;
			
			Segun medicamentos Hacer
				1:
					Escribir "El precio del Acetaminofen es: ", Acetaminofen;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				2:
					Escribir "El precio del Ibuprofeno es: ", Ibuprofeno;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				De Otro Modo:
					Escribir "No tenemos ese medicamento para la cabeza en stock";
			FinSegun
			
		4: 
			Escribir "Los productos disponibles para el cuidado e higiene personal son:";
			Escribir "1. Desodorante";
			Escribir "2. Shampoo para el cabello";
			Escribir "Si deseas comprar alguno de estos productos, escribe 1 o 2 según el que necesites";
			leer medicamentos;
			
			Segun medicamentos Hacer
				1:
					Escribir "El precio del Desodorante es: ", Desodorante;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				2:
					Escribir "El precio del Shampoo para el cabello es: ", Shampoo;
					Escribir "¿Deseas comprarlo?";
					leer opcion;
					Si (opcion = "si") o (opcion = "Si")  Entonces
						Escribir "HECHO! Producto comprado";
					SiNo
						Escribir "Puedes mirar otros productos";
					FinSi
				De Otro Modo:
					Escribir "No tenemos ese medicamento para la cabeza en stock";
			FinSegun
			
		De Otro Modo:
			Escribir "Opción incorrecta. Por favor marque una opcion que est designada";
	FinSegun
	
sino 
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
	
	Segun devolucion Hacer
		1:
			Escribir "Advil en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
		2:
			Escribir "Dolex en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
		3:
			Escribir "Pax en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
		4:
			Escribir "Noxpirin en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
		5:
			Escribir "Acetaminofen en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
		6:
			Escribir "Ibuprofeno en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
		7:
			Escribir "Desodorante en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
		8:
			Escribir "Shampoo en proceso de devolución, en unos instantes le daremos información sobre su solicitud. GRACIAS";
			
		De Otro Modo:
			Escribir "Devolución no válida";
	FinSegun
FinSi



FinProceso
