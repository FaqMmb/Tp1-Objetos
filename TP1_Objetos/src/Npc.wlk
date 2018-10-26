import Personaje.*

class Npc inherits Personaje{
	
	var dificultad
	
	constructor(unasMonedas,unaCargaMaxima,unaDificultad) = super(unasMonedas,unaCargaMaxima){
		
		dificultad = unaDificultad
		
	}
	
	
	override method habilidadParaLaLucha() = super() * dificultad.nivelDificultad()
	
	method cambiarDificultad(unaDificultad) {
		
		dificultad = unaDificultad
	}
}

object facil{
	
	method nivelDificultad() = 1
}

object moderado{
	
	method nivelDificultad() = 2
}

object dificil{
	
	method nivelDificultad() = 4
}


