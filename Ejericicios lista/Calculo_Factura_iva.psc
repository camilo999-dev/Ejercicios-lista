Funcion total <- Pedir_datos
    Definir contador Como Entero
    Definir precio, cantidad Como Real
    Definir total, subtotal Como Real
	dimension lista[2]
    total <- 0
	
    Para contador <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "Ingrese el precio unitario del artículo ", contador, ":"
        Leer precio
        Escribir "Ingrese la cantidad del artículo ", contador, ":"
        Leer cantidad
        
        lista[contador] <- precio
        lista[contador] <- cantidad
		
        subtotal <- precio * cantidad
        total <- total + subtotal
    FinPara
	
FinFuncion

Funcion resultado <- calcular_resultado(total)
    Definir resultado Como Real
    resultado <- total + (total * 0.19) 
FinFuncion

SubProceso Mostrar_resultado(resultado)
    Escribir "El total a pagar (con IVA 19%) es: $", resultado
FinSubProceso

Algoritmo Calculo_Factura_Lista
    Definir total, resultado Como Real
    Definir opcion Como Entero
    total <- 0
	
    Repetir
        Escribir "------ MENÚ ------"
        Escribir "1. Ingresar precios y cantidades"
        Escribir "2. Mostrar total a pagar con IVA"
        Escribir "3. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
		
        Segun opcion Hacer
            1:
                total <- Pedir_datos()
            2:
                Si total = 0 Entonces
                    Escribir "Debe ingresar primero los datos (opción 1)."
                Sino
                    resultado <- calcular_resultado(total)
                    Mostrar_resultado(resultado)
                FinSi
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

