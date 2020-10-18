class Jugador {
	var puntos = 0
	const numeroDeJugador
	const imagen 
	
	method sumarPuntos(cantidad) {
		puntos += cantidad
	}
	
	method numeroDeJugador() = numeroDeJugador
	
	method imagen() = imagen
}

object jugador1 inherits Jugador(imagen="assets/jugadores/jugador1.png", numeroDeJugador = 1){ }

object jugador2 inherits Jugador(imagen="assets/jugadores/jugador2.png", numeroDeJugador = 2){ }

object jugador3 inherits Jugador(imagen="assets/jugadores/jugador3.png", numeroDeJugador = 3){ }

object jugador4 inherits Jugador(imagen="assets/jugadores/jugador4.png", numeroDeJugador = 4){ }

