SubProceso Pedir_datos(cantidades, precios)
    Definir contador Como Entero;
	
    Para contador <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el precio unitario del producto ", contador, ": ";
        Leer precios[contador];
        Escribir "Ingrese la cantidad vendida del producto ", contador, ": ";
        Leer cantidades[contador];
    FinPara
FinSubProceso

SubProceso Mostrar_resultados(cantidades, precios)
    Definir contador Como Entero;
    Definir subtotal, total, totalUnidades Como Real;
    total <- 0;
    totalUnidades <- 0;
	
    Para contador <- 1 Hasta 3 Hacer
        subtotal <- cantidades[contador] * precios[contador];
        total <- total + subtotal;
        totalUnidades <- totalUnidades + cantidades[contador];
		
        Escribir "------------------------------------";
        Escribir "Producto ", contador, ": ";
        Escribir "  Cantidad vendida = ", cantidades[contador];
        Escribir "  Precio unitario  = $", precios[contador];
        Escribir "  Subtotal         = $", subtotal;
    FinPara
	
    Escribir "------------------------------------";
    Escribir "TOTAL DE UNIDADES: ", totalUnidades;
    Escribir "TOTAL A PAGAR: $", total;
FinSubProceso

Algoritmo Ventas_Productos
    Definir cantidades, precios Como Real;
    Definir opcion Como Entero;
    Dimension cantidades[3], precios[3]

    Para opcion <- 1 Hasta 3 Con Paso 1 Hacer
        cantidades[opcion] <- 0;
        precios[opcion] <- 0;
    FinPara
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar datos de los productos";
        Escribir "2. Mostrar total de ventas";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_datos(cantidades, precios);
            2:
                Mostrar_resultados(cantidades, precios);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo


