Funcion  Pedir_datos(imc)
	Definir contador Como Entero;
	Definir peso, altura Como Real;
		
	Para contador <- 1 Hasta 2 Con Paso 1 Hacer
	Escribir "Persona ", contador;
			Escribir "Ingrese el peso en kilogramos: ";
			Leer peso;
			Escribir "Ingrese la altura en metros: ";
            Leer altura;
			
	imc[contador] <- peso / (altura * altura);
	FinPara
FinFuncion

SubProceso Mostrar_imc(imc)
    Definir contador Como Entero;
	
    Para contador <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "El IMC de la persona ", contador, " es: ", imc[contador];
    FinPara
FinSubProceso

Algoritmo Calcular_IMC
    Definir imc Como Real;
    Definir opcion Como Entero;
	
    Dimension imc[2];
	
    Repetir
        Escribir "------ MENÚ ------";
        Escribir "1. Ingresar peso y altura";
        Escribir "2. Mostrar IMC";
        Escribir "3. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Pedir_datos(imc);
            2:
                Mostrar_imc(imc);
            3:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo


