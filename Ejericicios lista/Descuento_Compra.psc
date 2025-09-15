Funcion total <- Pedir_datos
    Definir contador Como Entero
    Definir precio, cantidad Como Real
    Definir total, subtotal Como Real
	dimension lista[1]
    total <- 0
	
    Para contador <- 1 Hasta 1 Con Paso 1 Hacer
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

Funcion descuento <- calcular_descuento(total)
    Definir descuento Como Real
	
    Si total >= 500 Entonces
        descuento <- total * 0.20 
    Sino Si total >= 300 Entonces
			descuento <- total * 0.10
		Sino Si total >= 100 Entonces
				descuento <- total * 0.05 
			Sino
				descuento <- 0
			FinSi
		FinSi
	FinSi
	
FinFuncion

Funcion precio_final <- calcular_precio_final(total, descuento)
    Definir precio_final Como Real
    precio_final <- total - descuento
FinFuncion

SubProceso Mostrar_resultado(total, descuento, precio_final)
    Escribir "Total sin descuento: $", total
    Escribir "Descuento aplicado: $", descuento
    Escribir "Precio final a pagar: $", precio_final
FinSubProceso

Algoritmo Descuento_Compra
    Definir total, descuento, precio_final Como Real
    Definir opcion Como Entero
    total <- 0
	
    Repetir
        Escribir "------ MENÚ ------"
        Escribir "1. Ingresar precio y cantidad"
        Escribir "2. Mostrar descuento y precio final"
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
                    descuento <- calcular_descuento(total)
                    precio_final <- calcular_precio_final(total, descuento)
                    Mostrar_resultado(total, descuento, precio_final)
                FinSi
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida. Intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo

