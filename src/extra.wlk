import wollok.game.*

object funcionalidades {
	
	// Anular movimientos default de las flechas
	method cancelarMovimientoFlechas(personaje){
		keyboard.up().onPressDo({personaje.position(personaje.position().down(1))})
		keyboard.down().onPressDo({personaje.position(personaje.position().up(1))})
		keyboard.right().onPressDo({personaje.position(personaje.position().left(1))})
		keyboard.left().onPressDo({personaje.position(personaje.position().right(1))})
	}
	
}
