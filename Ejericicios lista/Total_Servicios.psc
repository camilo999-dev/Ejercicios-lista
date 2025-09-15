Funcion  Pedir_servicios(servicios)
    Definir contador Como Entero;
    Para contador <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el valor a pagar por el servicio ", contador, ": ";
        Leer servicios[contador];
    FinPara
FinFuncion

SubProceso Mostrar_total(servicios)
    Definir contador Como Entero;
    Definir total Como Real;
    total <- 0;
	
    Escribir "----- Detalle de consumos -----";
    Para contador <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Servicio ", contador, ": $", servicios[contador];
        total <- total + servicios[contador];
    FinPara
	
    Escribir "-------------------------------";
    Escribir "TOTAL A PAGAR POR SERVICIOS: $", total;
FinSubProceso

Algoritmo Total_Servicios
    Definir servicios Como Real;
    Definir opcion Como Entero;
    Dimension servicios[3]
	
    Para opcion <- 1 Hasta 3 Con Paso 1 Hacer
        servicios[opcion] <- 0;
    FinPara
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar consumos de servicios";
        Escribir "2. Mostrar total a pagar";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_servicios(servicios);
            2:
                Mostrar_total(servicios);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

