import wollok.game.*
import flappy.*

object menu {
	method principal() {
		// game.boardGround("fondo2.jpg")
		config.teclasMenuPrincipal()
		config.iniciarMusica()
		
	}
	method configuracion() {
		config.teclasConfiguracion()
	}
}


object config {
	
	var property cantidadDeJugadores = 1

	method teclasMenuPrincipal() {
		
		keyboard.num1().onPressDo({flappy.iniciar()})
		keyboard.num2().onPressDo({})
		keyboard.num3().onPressDo({})
		keyboard.num4().onPressDo({})
		keyboard.num5().onPressDo({})
		keyboard.num6().onPressDo({})
		keyboard.c().onPressDo({menu.configuracion()})
	}
	
	method teclasConfiguracion() {
		keyboard.m().onPressDo({menu.principal()})
		keyboard.num1().onPressDo({self.cantidadDeJugadores(1)})
		keyboard.num2().onPressDo({self.cantidadDeJugadores(2)})
		keyboard.num3().onPressDo({self.cantidadDeJugadores(3)})
		keyboard.num4().onPressDo({self.cantidadDeJugadores(4)})
	}
	
	method iniciarMusica() {
//		sound.play()
//		sound.shouldLoop(true)
		
	}

}