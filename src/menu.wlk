import wollok.game.*

object menu {
	method principal() {
		config.teclasMenuPrincipal()
		config.iniciarMusica()
		
	}
	method configuracion() {
		config.teclasConfiguracion()
	}
}


object config {
	
	var property cantidadDeJugadores = 1
	var property jugadorActual = 1

	method teclasMenuPrincipal() {
		
		keyboard.num1().onPressDo({})
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
		keyboard.num1().onPressDo({self.cantidadDeJugadores(2)})
		keyboard.num1().onPressDo({self.cantidadDeJugadores(3)})
		keyboard.num1().onPressDo({self.cantidadDeJugadores(4)})
	}
	
	method iniciarMusica() {
//		sound.play()
//		sound.shouldLoop(true)
		
	}

}