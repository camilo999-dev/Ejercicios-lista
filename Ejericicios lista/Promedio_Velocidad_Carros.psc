Funcion  Pedir_datos_carros(velocidades)
    Definir distancia, tiempo Como Real;
    Definir contador Como Entero;
	
    Para contador <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "Ingrese la distancia recorrida por el carro ", contador, " (km): ";
        Leer distancia;
        Escribir "Ingrese el tiempo que tardó el carro ", contador, " (horas): ";
        Leer tiempo;
		velocidad <- distancia / tiempo;
        velocidades[contador] <- velocidad
    FinPara
FinFuncion

SubProceso Mostrar_resultados(velocidades)
    Definir contador Como Entero;
    Para contador <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "La velocidad promedio del carro ", contador, " es: ", velocidades[contador], " km/h";
    FinPara
FinSubProceso

Algoritmo Promedio_Velocidad_Carros
    Definir velocidades Como Real;
    Definir opcion Como Entero;
    Dimension velocidades[2]
    velocidades[1] <- 0;
    velocidades[2] <- 0;
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar datos de los dos carros";
        Escribir "2. Mostrar velocidades promedio";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_datos_carros(velocidades);
            2:
                Mostrar_resultados(velocidades);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
		
    Hasta Que opcion = 3
FinAlgoritmo

