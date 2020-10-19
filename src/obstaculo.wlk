import wollok.game.*
import flappy.*

class Obstaculo {
	var property partesA = #{obstaculo1A, obstaculo2A, obstaculo3A, obstaculo4A, obstaculo5A, obstaculo6A}
	var property partesB = #{obstaculo1B, obstaculo2B, obstaculo3B, obstaculo4B, obstaculo5B, obstaculo6B}
	
	method generarObstaculo() {
		var pos = (-15..10).anyOne().truncate(0) // starting pos should be random (higher than Piso)
		game.say(personaje,pos.toString())
		pos = self.generarBloque(pos, partesA)
		pos += 15
		pos = self.generarBloque(pos, partesB)
	}
	
	method generarBloque(pos, partes) {
		var tempPos = pos
		partes.forEach({parte => 
			parte.position(game.at(parte.position().x(), tempPos))
			game.addVisual(parte)
			tempPos += 5
		})
		return tempPos
	}
}

class BloqueObstaculo {
	var property position = game.at((game.width()-5), 0)
	const imagen = ""
	
	method image() = imagen
}

object obstaculo1A inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo1.png"){ }

object obstaculo2A inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo3A inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo4A inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo5A inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo6A inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo1.png"){ }

object obstaculo1B inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo1.png"){ }

object obstaculo2B inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo3B inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo4B inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo5B inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo2.png"){ }

object obstaculo6B inherits BloqueObstaculo(imagen = "assets/obstaculos/obstaculo1.png"){ }