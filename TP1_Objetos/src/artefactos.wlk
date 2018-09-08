//los artefactos tendrian que tener una variable que indique el duenio del artefacto, asi de esta forma se pueden hacer los calculos cuando se necesite saber o como se podria hacer

import refuerzos.*
import rolando.*

object espadaDelDestino{
	
	var duenio = rolando
	method unidadesDeLucha(){
		
		 return 3
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	}
}

object collarDivino{
	
	var duenio = rolando
	var cantidadDePerlas = 5
	
	method unidadesDeLucha(){
		
		return cantidadDePerlas
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	}
}

object mascaraOscura{
	
	var duenio = rolando
	method unidadesDeLucha(){
		
		return 4.max(2/duenio.fuerzaOscura())
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	}
}

	
object armadura{
	
	var duenio
	var property refuerzo = ningunRefuerzo
	
	method unidadesDeLucha(){
		
		return 2 + refuerzo.unidadesDeLuchaQueAporta(duenio)
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	}
	
}

object espejoFantastico{
	
	var duenio
	
	method unidadesDeLucha(){
		
		return duenio.puntosDelMejorArtefacto()
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	}
	
	
}


