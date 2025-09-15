Funcion total <- Sumar_ventas(lista)
    Definir total, contador Como Real;
    total <- 0;
	
    Para contador <- 1 Hasta 7 Con Paso 1 Hacer
        total <- total + lista[contador];
    FinPara
	
FinFuncion

SubProceso Pedir_ventas(lista)
    Definir contador Como Entero;
    Definir venta Como Real;
	
    Para contador <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese la venta del día ", contador, ": ";
        Leer venta;
        lista[contador] <- venta;
    FinPara
FinSubProceso

SubProceso Mostrar_total(total)
    Escribir "El total de ventas de la semana es: ", total;
FinSubProceso

Algoritmo Total_ventas_semanales
    Definir lista Como Real;
    Definir opcion Como Entero;
    Definir total Como Real;
	
    Dimension lista[7];
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar ventas diarias";
        Escribir "2. Mostrar total de la semana";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_ventas(lista);
            2:
                total <- Sumar_ventas(lista);
                Mostrar_total(total);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

