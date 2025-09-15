SubProceso Pedir_datos(costos)
    Definir contador Como Entero;
    Definir tiempo, tarifa, costo Como Real;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        Escribir "Trabajo ", contador;
        Escribir "Ingrese tiempo trabajado (horas): ";
        Leer tiempo;
        Escribir "Ingrese tarifa por hora: ";
        Leer tarifa;
		
        costo <- tiempo * tarifa;
        costos[contador] <- costo;
    FinPara
FinSubProceso

SubProceso Mostrar_costos(costos)
    Definir contador Como Entero;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        Escribir "Costo total del trabajo ", contador, ": ", costos[contador];
    FinPara
FinSubProceso

Algoritmo Calcular_costos_trabajos
    Definir costos Como Real;
    Definir opcion Como Entero;
	
    Dimension costos[1];
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar tiempos y tarifas";
        Escribir "2. Mostrar costos";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_datos(costos);
            2:
                Mostrar_costos(costos);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

