Proceso Punto5_Taller4
	
	Definir filas, columnas, filaMultiplicacion, columnaMultiplicacion Como Entero;
	Definir matriz, multiplicacion Como Caracter;
	Dimension matriz[12,12];
	Dimension multiplicacion[10,10];
	
	matriz[0,0] <- "                 ";
	matriz[0,1] <- "                 ";
	matriz[0,2] <- "  C  ";
	matriz[0,3] <- "  O  ";
	matriz[0,4] <- "  L  ";
	matriz[0,5] <- "  U  ";
	matriz[0,6] <- "  M  ";
	matriz[0,7] <- "  N  ";
	matriz[0,8] <- "  A  ";
	matriz[0,9] <- "  S  ";
	matriz[0,10] <- "       ";
	matriz[0,11] <- "       ";
	
	matriz[1,0] <- "   ";
	matriz[1,1] <- "    ";
	matriz[1,2] <- "     0    ";
	matriz[1,3] <- "     1    ";
	matriz[1,4] <- "     2    ";
	matriz[1,5] <- "     3    ";
	matriz[1,6] <- "     4    ";
	matriz[1,7] <- "     5    ";
	matriz[1,8] <- "     6    ";
	matriz[1,9] <- "     7    ";
	matriz[1,10] <- "     8    ";
	matriz[1,11] <- "     9    ";
	
	matriz[2,0] <- "   ";
	matriz[2,1] <- " 0  ";
	matriz[2,2] <- "   1 X 1  ";
	matriz[2,3] <- "   2 X 1  ";
	matriz[2,4] <- "   3 X 1  ";
	matriz[2,5] <- "   4 X 1  ";
	matriz[2,6] <- "   5 X 1  ";
	matriz[2,7] <- "   6 X 1  ";
	matriz[2,8] <- "   7 X 1  ";
	matriz[2,9] <- "   8 X 1  ";
	matriz[2,10] <- "   9 X 1  ";
	matriz[2,11] <- "  10 X 1 ";
	
	matriz[3,0] <- "   ";
	matriz[3,1] <- " 1  ";
	matriz[3,2] <- "   1 X 2  ";
	matriz[3,3] <- "   2 X 2  ";
	matriz[3,4] <- "   3 X 2  ";
	matriz[3,5] <- "   4 X 2  ";
	matriz[3,6] <- "   5 X 2  ";
	matriz[3,7] <- "   6 X 2  ";
	matriz[3,8] <- "   7 X 2  ";
	matriz[3,9] <- "   8 X 2  ";
	matriz[3,10] <- "   9 X 2  ";
	matriz[3,11] <- "  10 X 2 ";
	
	matriz[4,0] <- " F ";
	matriz[4,1] <- " 2  ";
	matriz[4,2] <- "   1 X 3  ";
	matriz[4,3] <- "   2 X 3  ";
	matriz[4,4] <- "   3 X 3  ";
	matriz[4,5] <- "   4 X 3  ";
	matriz[4,6] <- "   5 X 3  ";
	matriz[4,7] <- "   6 X 3  ";
	matriz[4,8] <- "   7 X 3  ";
	matriz[4,9] <- "   8 X 3  ";
	matriz[4,10] <- "   9 X 3  ";
	matriz[4,11] <- "  10 X 3 ";
	
	matriz[5,0] <- " I ";
	matriz[5,1] <- " 3  ";
	matriz[5,2] <- "   1 X 4  ";
	matriz[5,3] <- "   2 X 4  ";
	matriz[5,4] <- "   3 X 4  ";
	matriz[5,5] <- "   4 X 4  ";
	matriz[5,6] <- "   5 X 4  ";
	matriz[5,7] <- "   6 X 4  ";
	matriz[5,8] <- "   7 X 4  ";
	matriz[5,9] <- "   8 X 4  ";
	matriz[5,10] <- "   9 X 4  ";
	matriz[5,11] <- "  10 X 4 ";
	
	matriz[6,0] <- " L ";
	matriz[6,1] <- " 4  ";
	matriz[6,2] <- "   1 X 5  ";
	matriz[6,3] <- "   2 X 5  ";
	matriz[6,4] <- "   3 X 5  ";
	matriz[6,5] <- "   4 X 5  ";
	matriz[6,6] <- "   5 X 5  ";
	matriz[6,7] <- "   6 X 5  ";
	matriz[6,8] <- "   7 X 5  ";
	matriz[6,9] <- "   8 X 5  ";
	matriz[6,10] <- "   9 X 5  ";
	matriz[6,11] <- "  10 X 5 ";
	
	matriz[7,0] <- " A ";
	matriz[7,1] <- " 5  ";
	matriz[7,2] <- "   1 X 6  ";
	matriz[7,3] <- "   2 X 6  ";
	matriz[7,4] <- "   3 X 6  ";
	matriz[7,5] <- "   4 X 6  ";
	matriz[7,6] <- "   5 X 6  ";
	matriz[7,7] <- "   6 X 6  ";
	matriz[7,8] <- "   7 X 6  ";
	matriz[7,9] <- "   8 X 6  ";
	matriz[7,10] <- "   9 X 6  ";
	matriz[7,11] <- "  10 X 6 ";
	
	matriz[8,0] <- " S ";
	matriz[8,1] <- " 6  ";
	matriz[8,2] <- "   1 X 7  ";
	matriz[8,3] <- "   2 X 7  ";
	matriz[8,4] <- "   3 X 7  ";
	matriz[8,5] <- "   4 X 7  ";
	matriz[8,6] <- "   5 X 7  ";
	matriz[8,7] <- "   6 X 7  ";
	matriz[8,8] <- "   7 X 7  ";
	matriz[8,9] <- "   8 X 7  ";
	matriz[8,10] <- "   9 X 7  ";
	matriz[8,11] <- "  10 X 7 ";
	
	matriz[9,0] <- "   ";
	matriz[9,1] <- " 7  ";
	matriz[9,2] <- "   1 X 8  ";
	matriz[9,3] <- "   2 X 8  ";
	matriz[9,4] <- "   3 X 8  ";
	matriz[9,5] <- "   4 X 8  ";
	matriz[9,6] <- "   5 X 8  ";
	matriz[9,7] <- "   6 X 8  ";
	matriz[9,8] <- "   7 X 8  ";
	matriz[9,9] <- "   8 X 8  ";
	matriz[9,10] <- "   9 X 8  ";
	matriz[9,11] <- "  10 X 8 ";
	
	matriz[10,0] <- "   ";
	matriz[10,1] <- " 8  ";
	matriz[10,2] <- "   1 X 9  ";
	matriz[10,3] <- "   2 X 9  ";
	matriz[10,4] <- "   3 X 9  ";
	matriz[10,5] <- "   4 X 9  ";
	matriz[10,6] <- "   5 X 9  ";
	matriz[10,7] <- "   6 X 9  ";
	matriz[10,8] <- "   7 X 9  ";
	matriz[10,9] <- "   8 X 9  ";
	matriz[10,10] <- "   9 X 9  ";
	matriz[10,11] <- "  10 X 9 ";
	
	matriz[11,0] <- "   ";
	matriz[11,1] <- " 9  ";
	matriz[11,2] <- "   1 X 10  ";
	matriz[11,3] <- "  2 X 10  ";
	matriz[11,4] <- "  3 X 10  ";
	matriz[11,5] <- "  4 X 10  ";
	matriz[11,6] <- "  5 X 10  ";
	matriz[11,7] <- "  6 X 10  ";
	matriz[11,8] <- "  7 X 10  ";
	matriz[11,9] <- "  8 X 10  ";
	matriz[11,10] <- "  9 X 10  ";
	matriz[11,11] <- " 10 X 10 ";
	

	Para filas <- 0 Hasta 11 Con Paso 1 Hacer
		Para columnas <- 0 Hasta 11 Con Paso 1 Hacer
			Escribir matriz[filas,columnas] Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	
	
	multiplicacion[0,0] <- "1";
	multiplicacion[0,1] <- "2";
	multiplicacion[0,2] <- "3";
	multiplicacion[0,3] <- "4";
	multiplicacion[0,4] <- "5";
	multiplicacion[0,5] <- "6";
	multiplicacion[0,6] <- "7";
	multiplicacion[0,7] <- "8";
	multiplicacion[0,8] <- "9";
	multiplicacion[0,9] <- "10";
	
	multiplicacion[1,0] <- "2";
	multiplicacion[1,1] <- "4";
	multiplicacion[1,2] <- "6";
	multiplicacion[1,3] <- "8";
	multiplicacion[1,4] <- "10";
	multiplicacion[1,5] <- "12";
	multiplicacion[1,6] <- "14";
	multiplicacion[1,7] <- "16";
	multiplicacion[1,8] <- "18";
	multiplicacion[1,9] <- "20";
	
	multiplicacion[2,0] <- "3";
	multiplicacion[2,1] <- "6";
	multiplicacion[2,2] <- "9";
	multiplicacion[2,3] <- "12";
	multiplicacion[2,4] <- "15";
	multiplicacion[2,5] <- "18";
	multiplicacion[2,6] <- "21";
	multiplicacion[2,7] <- "24";
	multiplicacion[2,8] <- "27";
	multiplicacion[2,9] <- "30";
	
	multiplicacion[3,0] <- "4";
	multiplicacion[3,1] <- "8";
	multiplicacion[3,2] <- "12";
	multiplicacion[3,3] <- "16";
	multiplicacion[3,4] <- "20";
	multiplicacion[3,5] <- "24";
	multiplicacion[3,6] <- "28";
	multiplicacion[3,7] <- "32";
	multiplicacion[3,8] <- "36";
	multiplicacion[3,9] <- "40";
	
	multiplicacion[4,0] <- "5";
	multiplicacion[4,1] <- "10";
	multiplicacion[4,2] <- "15";
	multiplicacion[4,3] <- "20";
	multiplicacion[4,4] <- "25";
	multiplicacion[4,5] <- "30";
	multiplicacion[4,6] <- "35";
	multiplicacion[4,7] <- "40";
	multiplicacion[4,8] <- "45";
	multiplicacion[4,9] <- "50";
	
	multiplicacion[5,0] <- "6";
	multiplicacion[5,1] <- "12";
	multiplicacion[5,2] <- "18";
	multiplicacion[5,3] <- "24";
	multiplicacion[5,4] <- "30";
	multiplicacion[5,5] <- "36";
	multiplicacion[5,6] <- "42";
	multiplicacion[5,7] <- "48";
	multiplicacion[5,8] <- "54";
	multiplicacion[5,9] <- "60";
	
	multiplicacion[6,0] <- "7";
	multiplicacion[6,1] <- "14";
	multiplicacion[6,2] <- "21";
	multiplicacion[6,3] <- "28";
	multiplicacion[6,4] <- "35";
	multiplicacion[6,5] <- "42";
	multiplicacion[6,6] <- "49";
	multiplicacion[6,7] <- "56";
	multiplicacion[6,8] <- "63";
	multiplicacion[6,9] <- "70";
	
	multiplicacion[7,0] <- "8";
	multiplicacion[7,1] <- "16";
	multiplicacion[7,2] <- "24";
	multiplicacion[7,3] <- "32";
	multiplicacion[7,4] <- "40";
	multiplicacion[7,5] <- "48";
	multiplicacion[7,6] <- "56";
	multiplicacion[7,7] <- "64";
	multiplicacion[7,8] <- "72";
	multiplicacion[7,9] <- "80";
	
	multiplicacion[8,0] <- "9";
	multiplicacion[8,1] <- "18";
	multiplicacion[8,2] <- "27";
	multiplicacion[8,3] <- "36";
	multiplicacion[8,4] <- "45";
	multiplicacion[8,5] <- "54";
	multiplicacion[8,6] <- "63";
	multiplicacion[8,7] <- "72";
	multiplicacion[8,8] <- "81";
	multiplicacion[8,9] <- "90";
	
	multiplicacion[9,0] <- "10";
	multiplicacion[9,1] <- "20";
	multiplicacion[9,2] <- "30";
	multiplicacion[9,3] <- "40";
	multiplicacion[9,4] <- "50";
	multiplicacion[9,5] <- "60";
	multiplicacion[9,6] <- "70";
	multiplicacion[9,7] <- "80";
	multiplicacion[9,8] <- "90";
	multiplicacion[9,9] <- "100";
	
	Escribir "";
	Escribir "¿CUÁL ES EL RESULTADO QUE DESEAS HALLAR?";
	Escribir "Según la multiplicación que quieras hallar, indica lo siguiente";
	Escribir "";
	Escribir "¿En que fila se encuentra la multiplicación?: " Sin Saltar;
	Leer filaMultiplicacion;
	
	
	Repetir
		Si filaMultiplicacion < 0 O filaMultiplicacion > 9 Entonces
			Escribir "Ese número de fila no se encuentra en la tabla, por favor ingresa un número del 0 al 9.";
			Leer filaMultiplicacion;
		FinSi
	Hasta Que filaMultiplicacion >= 0 O filaMultiplicacion <= 9
	
	
	Escribir "¿En que columna se encuentra la multiplicación?: " Sin Saltar;
	Leer columnaMultiplicacion;
	
	Repetir
		Si columnaMultiplicacion < 0 O columnaMultiplicacion > 9 Entonces
			Escribir "Ese número de columna no se encuentra en la tabla, por favor ingresa un número del 0 al 9.";
			Leer columnaMultiplicacion;
		FinSi
	Hasta Que columnaMultiplicacion >= 0 O columnaMultiplicacion <= 9
	
	Escribir "";
	Escribir "Usted quiere hallar el resultado de la fila ", filaMultiplicacion, " y columna ", columnaMultiplicacion;
	Escribir "El resultado de esa multiplicacion es = ", multiplicacion[filaMultiplicacion,columnaMultiplicacion];
	
	
FinProceso
