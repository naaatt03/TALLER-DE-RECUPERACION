Algoritmo culebrita_direcciones
	Definir INICIO Como Logica
	//posicion inicial
	X_serpiente <- 5
	Y_serpiente <- 5
	direccion <- 2 // 1=Arriba, 2=Derecha, 3=Abajo, 4=Izquierda

	Limpiar Pantalla
	Escribir "Serpiente en: (", x_serpiente, ", ", y_serpiente, ")"
	Escribir "Presione 1=Arriba, 2=Derecha, 3=Abajo, 4=Izquierda"
	Leer direccion

	// Mover la serpiente 
	Segun direccion Hacer
		1: y_serpiente <- y_serpiente - 1 // Arriba
		2: x_serpiente <- x_serpiente + 1 // Derecha
		3: y_serpiente <- y_serpiente + 1 // Abajo
		4: x_serpiente <- x_serpiente - 1 // Izquierda
	FinSegun

FinAlgoritmo
