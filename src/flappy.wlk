import wollok.game.*
import jugador.*

object flappy {
	method iniciar(){
		game.addVisualCharacter(personaje)
		game.addVisual(piso)
		
		configFlappy.teclas()
		configFlappy.coliders() 
	}
	
}

object personaje {
	var property position = game.center()
	
	method image() = jugador2.imagen()
	
	method saltar() {
		position = self.position().up(6)	
	}
	method caer() {
		position = self.position().down(1)
	}
	method perdio() {
		position = game.center()
		game.removeTickEvent("gravedad")
		game.removeTickEvent("moverObstaculos")
		game.say(self, "Perdi :(")
	}
}

object piso {
	var property position = game.origin()
	
	method image() = "assets/fondos/piso-flappy.png"
}

object configFlappy {
	method teclas() {
		keyboard.any().onPressDo({personaje.saltar()})
		
		// Anular movimientos default de las flechas
		keyboard.up().onPressDo({personaje.position(personaje.position().down(1))})
		keyboard.down().onPressDo({personaje.position(personaje.position().up(1))})
		keyboard.right().onPressDo({personaje.position(personaje.position().left(1))})
		keyboard.left().onPressDo({personaje.position(personaje.position().right(1))})
		
		game.onTick(30, "gravedad", { personaje.caer() })
		game.onTick(50, "moverObstaculos", {})
	}
	method coliders(){
		game.whenCollideDo(personaje, { elemento => 
			personaje.perdio()	
			
		})
	}
}