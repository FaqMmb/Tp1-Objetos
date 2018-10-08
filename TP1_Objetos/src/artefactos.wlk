import refuerzos.*
import Personaje.*

class Arma{
	
	const poder = 3
	
	method poder() = poder
	
	method unidadesDeLucha(duenio) = self.poder()
	
	method precioDeLista() = 5 * self.poder()
}


object collarDivino{
	
	var property cantidadDePerlas = 5
	
	method unidadesDeLucha(duenio){
		
		return self.cantidadDePerlas()
	}
	
	method precioDeLista() = 2 * self.cantidadDePerlas()
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
	
	var property refuerzo
    const valorBase
    
    constructor(unValorBase,unRefuerzo){
    	
    	valorBase = unValorBase
    	refuerzo = unRefuerzo
    }
	
	method unidadesDeLucha(duenio){
		
		return self.valorBase() + refuerzo.unidadesDeLuchaQueAporta(duenio)
	}
	
	method valorBase() = valorBase
	
	method precioDeLista() = refuerzo.costoAgregado(self)
	
	
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
	
	method precioDeLista() = 90
}





