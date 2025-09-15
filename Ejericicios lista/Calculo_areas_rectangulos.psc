Funcion  Pedir_datos(lista)
    Definir contador Como Entero;
    Definir base, altura, area Como Real;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        Escribir "Rectángulo ", contador;
        Escribir "Ingrese la base: ";
        Leer base;
        Escribir "Ingrese la altura: ";
        Leer altura;
		
        area <- base * altura;
        lista[contador] <- area;
    FinPara
FinFuncion


SubProceso Mostrar_area(lista)
    Definir contador Como Entero;
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
        Escribir "Área del rectángulo ", contador, ": ", lista[contador];
    FinPara
FinSubProceso

Algoritmo Calculo_areas_rectangulos
    Definir lista Como Real;
    Definir opcion Como Entero;
	Dimension lista[1]
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar base y altura";
        Escribir "2. Mostrar área";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_datos(lista);
            2:
                Mostrar_area(lista);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

