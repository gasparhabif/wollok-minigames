import wollok.game.*

object menu {
	method principal() {
		config.teclasMenuPrincipal()
		
	}
	method configuracion() {
		config.teclasConfiguracion()
		
	}
}


object config {

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
	}
	
	method musica() {
		
	}

}