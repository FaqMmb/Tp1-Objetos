import refuerzos.*
import rolando.*

object espadaDelDestino{
	
	method unidadesDeLucha(duenio){
		
		 return 3
	}
	
}

object collarDivino{
	
	var cantidadDePerlas = 5
	
	method unidadesDeLucha(duenio){
		
		return cantidadDePerlas
	}
	
	
	method cantidadDePerlas(unNumero){
		
		cantidadDePerlas = unNumero
	}
}

object mascaraOscura{
	
	method unidadesDeLucha(duenio){
		
		return 4.max(duenio.fuerzaOscura()/2)
	}
	
}

	
object armadura{
	
	var property refuerzo = ningunRefuerzo
	
	method unidadesDeLucha(duenio){
		
		return 2 + refuerzo.unidadesDeLuchaQueAporta(duenio)
	}
	
}

object espejoFantastico{
	
	method unidadesDeLucha(duenio){
		
		if(duenio.artefactos() == [self]){
			
			return 0
		}
		
		else{
		
		return duenio.puntosDelMejorArtefacto()
	    }
		    
	}
}




