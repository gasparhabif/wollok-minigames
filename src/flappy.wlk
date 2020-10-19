import wollok.game.*
import jugador.*
import obstaculo.*
import extra.*

const SALTO = 6

object flappy {
	method iniciar(){
		const unObstaculo = new Obstaculo()
		
		game.addVisualCharacter(personaje)
		unObstaculo.generarObstaculo()
		game.addVisual(pisoCollider)
		game.addVisual(pisoDecoracion)
		
		configFlappy.teclas()
		configFlappy.coliders() 
	}
	
}

object personaje {
	var property position = game.center()
	var property perdio = false
	
	method image() = jugador2.imagen()
	
	method saltar() {
		if(!self.perdio() && self.puedeSaltar()){
			position = self.position().up(SALTO)				
		}
	}
	method caer() {
		position = self.position().down(1)
	}
	method perder() {
		position = game.center()
		game.removeTickEvent("gravedad")
		game.removeTickEvent("moverObstaculos")
		game.say(self, "Perdi :(")
		perdio = true
	}
	method puedeSaltar() = game.height() > self.position().y() + SALTO
}

class Piso {
	method image() = "assets/fondos/piso-flappy.png"
}

object pisoCollider inherits Piso {
	var property position = game.at(game.center().x(), 0)	
}

object pisoDecoracion inherits Piso {
	var property position = game.origin()	
}

object configFlappy {
	method teclas() {
		keyboard.any().onPressDo({ personaje.saltar() })
		
		funcionalidades.cancelarMovimientoFlechas(personaje)
		
		game.onTick(30, "gravedad", { personaje.caer() })
		game.onTick(50, "moverObstaculos", {})
	}
	
	method coliders(){
		game.whenCollideDo(personaje, { elemento => 
			personaje.perder()	
		})
	}
}