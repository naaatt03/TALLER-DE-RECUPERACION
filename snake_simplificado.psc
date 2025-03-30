Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

Algoritmo snake_simplificado
		Definir serpiente, direccion, manzana, juego_activo, puntuacion Como Entero
		Definir x_serpiente, y_serpiente, x_manzana, y_manzana Como Entero
		
		// Inicializar el juego
		juego_activo <- 1
		puntuacion <- 0
		x_serpiente <- 5
		y_serpiente <- 5
		direccion <- 2 // 1=Arriba, 2=Derecha, 3=Abajo, 4=Izquierda
		x_manzana <- Aleatorio(1,10)
		y_manzana <- Aleatorio(1,10)
		
		Mientras juego_activo = 1 Hacer
			// Mostrar tablero
			Limpiar Pantalla
			Escribir "Puntuación: ", puntuacion
			Escribir "Serpiente en: (", x_serpiente, ", ", y_serpiente, ")"
			Escribir "Manzana en: (", x_manzana, ", ", y_manzana, ")"
			
			// Leer entrada del usuario (simulación)
			Escribir "Presione 1=Arriba, 2=Derecha, 3=Abajo, 4=Izquierda"
			Leer direccion
			
			// Mover serpiente
			Segun direccion Hacer
				1: y_serpiente <- y_serpiente - 1
				2: x_serpiente <- x_serpiente + 1
				3: y_serpiente <- y_serpiente + 1
				4: x_serpiente <- x_serpiente - 1
			FinSegun
			
			// Verificar colisión con bordes (tablero de 10x10)
			Si x_serpiente < 1 O x_serpiente > 10 O y_serpiente < 1 O y_serpiente > 10 Entonces
				juego_activo <- 0
				Escribir "¡Game Over! Puntuación final: ", puntuacion
			FinSi
			
			// Verificar si la serpiente come la manzana
			Si x_serpiente = x_manzana Y y_serpiente = y_manzana Entonces
				puntuacion <- puntuacion + 1
				x_manzana <- Aleatorio(1,10)
				y_manzana <- Aleatorio(1,10)
			FinSi
			
			Esperar 1 Segundos
		FinMientras
		
FinProceso
