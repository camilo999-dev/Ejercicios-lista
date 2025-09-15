Funcion promedio <- pedir_notas
    Definir contador Como Entero
    Definir nota, suma Como Real
    suma <- 0
    Para contador <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese la nota ", contador, ":"
        Leer nota
        suma <- suma + nota
    FinPara
    promedio <- suma / 3
FinFuncion

Funcion resultado <- resultado_promedio(promedio)
    resultado <- promedio
FinFuncion

Funcion Mostrar_resultado(resultado)
    Escribir "El promedio de la materia es: ", resultado
FinFuncion

Algoritmo Promedio_Tres_Notas
    Definir promedio, resultado Como Real
    Definir opcion Como Entero
	
    Repetir
        Escribir "1. Ingresar las notas de la materia"
        Escribir "2. Mostrar promedio"
        Escribir "3. Salir"
        Escribir "Seleccione una opción:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                promedio <- pedir_notas()
            2:
                resultado <- resultado_promedio(promedio)
                Mostrar_resultado(resultado)
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

