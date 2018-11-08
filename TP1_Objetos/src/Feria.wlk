class Feria{  
             var impuesto
             
             constructor(unImpuesto){
             	
             	impuesto = unImpuesto
             }
             
             method hacerTransaccion(alguien, unProducto) {
		
		if (!alguien.puedeRealizarTransaccion(unProducto)) {
			
			error.throwWithMessage("No puede realizar la transaccion")
		} 
		else {
			
			self.realizarTransaccion(alguien, unProducto)
		}
	}
             
             method realizarTransaccion(alguien,unProducto){
             	
             	self.cobrar(alguien,unProducto)
             	self.otorgarProducto(alguien,unProducto)
             }
             
             method cobrar(alguien,unProducto){
             	
             	alguien.pagar(self.calculoVenta(alguien,unProducto) + impuesto.aplicarImpuesto(unProducto))
             }
             method otorgarProducto(alguien,unProducto){
             	
             	unProducto.serOtorgadoA(alguien)
             }
             
             method calculoVenta(alguien,unProducto)  = unProducto.cuantoCuesta(alguien)
             
             method recategorizacionCompulsiva() = impuesto.recategorizacion(self)
             
                method recategorizar(unImpuesto) {
             	
             	impuesto = unImpuesto
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


