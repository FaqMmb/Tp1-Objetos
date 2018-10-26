class Feria{ //presupongo que tanto para saber si puede canjear hechizo o comprar un artefacto
             //solamente basta con que las monedas que tiene el personaje sean mas que lo que
             //sea que salga el hechizo o el artefacto ( esto viene a que se le descuenta la 
             //mitad de lo que sale su hechizoFavorito.)
             
             var impuesto
             
             constructor(unImpuesto){
             	
             	impuesto = unImpuesto
             }
             
             method hacerTransaccion(alguien, artefactoOHechizo) {
		
		if (!alguien.puedeRealizarTransaccion(artefactoOHechizo)) {
			
			error.throwWithMessage("No puede realizar la transaccion")
		} 
		else {
			
			self.realizarTransaccion(alguien, artefactoOHechizo)
		}
	}
             
             method realizarTransaccion(alguien,artefactoOHechizo){
             	
             	self.cobrar(alguien,artefactoOHechizo)
             	self.otorgarObjeto(alguien,artefactoOHechizo)
             }
             
             method cobrar(alguien,artefactoOHechizo){
             	
             	var cuantoPagar = self.calculoVenta(alguien,artefactoOHechizo) + impuesto.aplicarImpuesto(artefactoOHechizo)
             	
             	alguien.pagar(cuantoPagar)
             }
             method otorgarObjeto(alguien,artefactoOHechizo)
             
             method calculoVenta(alguien,artefactoOHechizo)
             
             method recategorizacionCompulsiva() = impuesto.recategorizacion(self)
             
                method recategorizar(unImpuesto) {
             	
             	impuesto = unImpuesto
             }
	
}

class FeriaDeHechizos inherits Feria{
	
	override method calculoVenta(alguien,unHechizo) = 0.max(unHechizo.precioDeLista() - (alguien.precioDeSuHechizoPreferido()/2))
	
	override method otorgarObjeto(alguien,hechizo){
		
		alguien.recibirHechizo(hechizo)
	}

}

class FeriaDeArmas inherits Feria{
	
	override method calculoVenta(alguien,unArtefacto) = unArtefacto.precioDeLista()
	override method otorgarObjeto(alguien,unArtefacto){
		
		alguien.recibirArtefacto(unArtefacto)
	}
	
}

class Independiente{
	
	var property comision
	
	constructor(unaComision) {
		
		comision = unaComision
	}
	
	method aplicarImpuesto(unArtefacto) = comision * unArtefacto.precioDeLista()
	
	method recategorizacion(unComerciante){
		
		self.comision(comision*2)
		
		if(self.superoEl21PorCiento()){
			
			unComerciante.recategorizar(registrado)
		}
	}
	
	method superoEl21PorCiento() = self.comision() >= 0.21
	
}

object registrado{
	
	method aplicarImpuesto(unArtefacto) = unArtefacto.precioDeLista() * 0.21
	
	method recategorizacion(unComerciante) {
		
		unComerciante.recategorizar(impuestoALasGanancias)
	}
}

object impuestoALasGanancias{
	
	method aplicarImpuesto(unArtefacto) = minimoNoImponible.calcularImpuesto(unArtefacto)
	
	method recategorizacion(unComerciante){} // no se hace nada, esta bien que quede vacio el metodo?
	
}

object noTieneComision{
	
	method aplicarImpuesto(unArtefacto) = 0
}


object minimoNoImponible{
	
	const minimoNoImponibleActual = 5
	
	method minimoNoImponibleActual() = minimoNoImponibleActual
	
	method calcularImpuesto(unArtefacto){
		
		if(self.verificarImpuesto(unArtefacto) ){
			
			return 0
		}
		
		return self.calculoImpuesto(unArtefacto)
	}
	
	method verificarImpuesto(unArtefacto) = unArtefacto.precioDeLista() <= self.minimoNoImponibleActual()
	
	method calculoImpuesto(unArtefacto) = self.diferenciaImporteMinimoNoImponible(unArtefacto) * 0.35
	
	method diferenciaImporteMinimoNoImponible(unArtefacto) = unArtefacto.precioDeLista() - self.minimoNoImponibleActual() 
}


