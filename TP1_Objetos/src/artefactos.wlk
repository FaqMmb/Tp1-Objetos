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
	
	var refuerzo = ningunRefuerzo
	
	method unidadesDeLucha(duenio){
		
		return 2 + refuerzo.unidadesDeLuchaQueAporta(duenio)
	}
	
<<<<<<< HEAD
	method refuerzo(cual){
		
		refuerzo = cual
=======
	method refuerzo(){
		
		return refuerzo
>>>>>>> 39ed53cef5b8502de5977566a0cfdd29801188d7
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




