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
	
	method cantidadDePerlas(unNumero){
		
		cantidadDePerlas = unNumero
	}
}

object mascaraOscura{
	
	var duenio = rolando 
	method unidadesDeLucha(){
		
		return 4.max(duenio.fuerzaOscura()/2)
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	}
}

	
object armadura{
	
	var duenio = rolando
	var property refuerzo = ningunRefuerzo
	
	method unidadesDeLucha(){
		
		return 2 + refuerzo.unidadesDeLuchaQueAporta(duenio)
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	}
	
}

object espejoFantastico{
	
	var duenio = rolando
	
	method unidadesDeLucha(){
		
		if(duenio.artefactos() == [self]){
			
			return 0
		}
		
		else{
		
		return duenio.puntosDelMejorArtefacto()
	    }
		    
	}
	
	method duenio(unDuenio){
		
		duenio = unDuenio
	} 
}




