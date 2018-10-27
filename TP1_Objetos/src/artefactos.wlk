import refuerzos.*
import Personaje.*

class Artefacto{
	
	const fechaCompra
	const peso
	
	constructor(unaFecha,unPeso){
		
		fechaCompra = unaFecha
		peso = unPeso
	}
	
	method factorDeCorreccion() = (self.diasDesdeLaCompra()/1000).min(1)
	
	method pesoTotal() = self.peso() - self.factorDeCorreccion() + self.pesoAgregado()
	
	method diasDesdeLaCompra() = new Date() - self.fechaCompra()
	
	method fechaCompra() = fechaCompra
	
	method peso() = peso
	
	method pesoAgregado()
	
}

class Arma inherits Artefacto {
	
	const poder = 3
	
	method poder() = poder
	
	method unidadesDeLucha(duenio) = self.poder()
	
	method precioDeLista() = 5 * self.poder()
	
	override method pesoAgregado() = 0
}


class CollarDivino inherits Artefacto{
	
	var property cantidadDePerlas = 5
	
	method unidadesDeLucha(duenio){
		
		return self.cantidadDePerlas()
	}
	
	method precioDeLista() = 2 * self.cantidadDePerlas()
	
	override method pesoAgregado() = 0.5*cantidadDePerlas
}

class Mascara inherits Artefacto{
	
	const indiceOscuridad
	var minimo = 4
	
	constructor(unIndiceOscuridad,unaFecha,unPeso) = super(unaFecha,unPeso){
		
		indiceOscuridad = unIndiceOscuridad
	}
	
	method unidadesDeLucha(duenio){
		
		return minimo.max(self.valorDeLucha())
	}
	
	method valorDeLucha() = (fuerzaOscura.valor()/2 )* indiceOscuridad
	
	method cambiarMinimo(unValor){
		
		minimo = unValor
	}
	
	override method pesoAgregado() = 0.max(self.valorDeLucha() - 3)
	
	method precioDeLista() = 10 * indiceOscuridad
	
	
}


class Armadura inherits Artefacto{
	
	var property refuerzo
    const valorBase
    
    constructor(unValorBase,unRefuerzo,unaFecha,unPeso) = super(unaFecha,unPeso){
    	
    	valorBase = unValorBase
    	refuerzo = unRefuerzo
    }
	
	method unidadesDeLucha(duenio){
		
		return self.valorBase() + refuerzo.unidadesDeLuchaQueAporta(duenio)
	}
	
	method valorBase() = valorBase
	
	method precioDeLista() = refuerzo.costoAgregado(self)
	
	override method pesoAgregado() = self.refuerzo().peso()
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

object fuerzaOscura{
	
	var property valor = 5
}



