import wollok.game.*
import jugador.*

object flappy {
	method iniciar(){
		configFlappy.teclas()
		game.addVisualCharacter(personaje)
	}
	
}

object personaje {
	var property position = game.center()
	
	method image() = jugador2.imagen()
	
	method saltar() {
		position = self.position().up(4)	
	}
	method caer() {
		position = self.position().down(1)
	}
}

object configFlappy {
	method teclas() {
		keyboard.any().onPressDo({personaje.saltar()})
		keyboard.up().onPressDo({})
		keyboard.down().onPressDo({})
		keyboard.right().onPressDo({})
		keyboard.left().onPressDo({})
		
		game.onTick(50, "gravedad", { personaje.caer() })
		game.onTick(50, "moverObstaculos", {})
	}
	method coliders(){
//		game.whenCollideDo(wollok, { elemento => 
//			elemento.subir()
//			game.say(wollok,wollok.howAreYou())
//		})
	}
}