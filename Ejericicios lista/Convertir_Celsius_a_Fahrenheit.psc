SubProceso Pedir_temperaturas(lista)
    Definir contador Como Entero;
    Definir celsius, fahrenheit Como Real;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        Escribir "Ingrese la temperatura en Celsius ", contador, ": ";
        Leer celsius;
		
        fahrenheit <- celsius * 9 / 5 + 32;
        lista[contador] <- fahrenheit;
    FinPara
FinSubProceso

SubProceso Mostrar_temperaturas(lista)
    Definir contador Como Entero;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        Escribir "Temperatura ", contador, " en Fahrenheit: ", lista[contador];
    FinPara
FinSubProceso

Algoritmo Convertir_Celsius_a_Fahrenheit
    Definir lista Como Real;
    Definir opcion Como Entero;
	
    Dimension lista[1];
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar temperaturas en Celsius";
        Escribir "2. Mostrar temperaturas en Fahrenheit";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_temperaturas(lista);
            2:
                Mostrar_temperaturas(lista);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

