Funcion Ingresar_calorias(calorias)
    Definir dia Como Entero;
    Definir valor Como Real;
	
    Para dia <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese las calorías consumidas en el día ", dia, ": ";
        Leer valor;
        calorias[dia] <- valor;
    FinPara
FinFuncion


Funcion total <- Sumar_calorias(calorias)
    Definir total Como Real;
    Definir i Como Entero;
    total <- 0;
	
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        total <- total + calorias[i];
    FinPara
	
FinFuncion

SubProceso Mostrar_total(total)
    Escribir "El total de calorías consumidas en la semana es: ", total;
FinSubProceso

Algoritmo Calorias_semanales
    Definir calorias Como Real;
    Definir total Como Real;
    Definir opcion Como Entero;
	
    Dimension calorias[7];
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar calorías diarias";
        Escribir "2. Mostrar total semanal";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Ingresar_calorias(calorias);
            2:
                total <- Sumar_calorias(calorias);
                Mostrar_total(total);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

