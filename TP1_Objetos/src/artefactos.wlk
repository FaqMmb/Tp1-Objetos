import refuerzos.*
import Personaje.*

class Arma{
	
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

class Mascara{
	
	const indiceOscuridad
	var minimo = 4
	
	constructor(unIndiceOscuridad){
		
		indiceOscuridad = unIndiceOscuridad
	}
	
	method unidadesDeLucha(duenio){
		
		return minimo.max((duenio.fuerzaOscura()/2 )* indiceOscuridad)
	}
	
	method cambiarMinimo(unValor){
		
		minimo = unValor
	}
	
	
}



	
class Armadura{
	
	var refuerzo = ningunRefuerzo
	
	method unidadesDeLucha(duenio){
		
		return 2 + refuerzo.unidadesDeLuchaQueAporta(duenio)
	}
	

	method refuerzo(cual){
		
		refuerzo = cual
}
	method refuerzo(){
		
		return refuerzo

	}
	
}

object espejoFantastico{
	
	method unidadesDeLucha(duenio){
		
		if(duenio.soloTieneElEspejo()){
			
			return 0
		}
		
		else{
		
		return duenio.puntosDelMejorArtefacto()
	    }
		    
	}
}





