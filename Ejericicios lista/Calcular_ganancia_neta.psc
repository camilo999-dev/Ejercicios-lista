Funcion  Pedir_datos(ingresos, gastos)
    Definir contador Como Entero;
    Definir ingreso, gasto Como Real;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        Escribir "Día ", contador, ":";
        Escribir "Ingrese ingreso: ";
        Leer ingreso;
        Escribir "Ingrese gasto: ";
        Leer gasto;
		
        ingresos[contador] <- ingreso;
        gastos[contador] <- gasto;
    FinPara
FinFuncion


Funcion ganancia <- Calcular_ganancia(ingresos, gastos)
    Definir contador Como Entero;
    Definir ganancia Como Real;
    ganancia <- 0;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        ganancia <- ganancia + (ingresos[contador] - gastos[contador]);
    FinPara
FinFuncion

SubProceso Mostrar_ganancia(ganancia)
    Escribir "La ganancia neta total es: ", ganancia;
FinSubProceso

Algoritmo Calcular_ganancia_neta
    Definir ingresos, gastos Como Real;
    Definir opcion Como Entero;
    Definir ganancia Como Real;
	
    Dimension ingresos[1], gastos[1];  // ? Aquí SÍ debe ir Dimension
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar ingresos y gastos";
        Escribir "2. Mostrar ganancia neta";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_datos(ingresos, gastos);
            2:
                ganancia <- Calcular_ganancia(ingresos, gastos);
                Mostrar_ganancia(ganancia);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
