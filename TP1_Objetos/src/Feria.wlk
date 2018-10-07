class Feria{ //presupongo que tanto para saber si puede canjear hechizo o comprar un artefacto
             //solamente basta con que las monedas que tiene el personaje sean mas que lo que
             //sea que salga el hechizo o el artefacto ( esto viene a que se le descuenta la 
             //mitad de lo que sale su hechizoFavorito.)
             
             method hacerTransaccion(alguien,artefactoOHechizo){
             	
             	if (alguien.puededRealizarTransaccion(artefactoOHechizo)){
             		
             		self.realizarTransaccion(alguien,artefactoOHechizo)
             	}
             }
             
             method realizarTransaccion(alguien,artefactoOHechizo){
             	
             	self.cobrar(alguien,artefactoOHechizo)
             	self.otorgarObjeto(alguien,artefactoOHechizo)
             }
             
             method cobrar(alguien,artefactoOHechizo){
             	
             	var cuantoPagar = self.calculoVenta(alguien,artefactoOHechizo)
             	
             	alguien.pagar(cuantoPagar)
             }
             method otorgarObjeto(alguien,artefactoOHechizo)
             method calculoVenta(alguien,artefactoOHechizo)
	
}

object feriaDeHechizos inherits Feria{
	

	override method calculoVenta(alguien,unHechizo) = 0.max(unHechizo.precioDeLista() - (alguien.precioDeSuHechizoPreferido()/2))
	
	override method otorgarObjeto(alguien,hechizo){
		
		alguien.recibirHechizo(hechizo)
	}

}

object feriaDeArmas inherits Feria{
	
	override method calculoVenta(alguien,unArtefacto) = unArtefacto.precioDeLista()
	override method otorgarObjeto(alguien,unArtefacto){
		
		alguien.recibirArtefacto(unArtefacto)
	}
	
	
	
	
}
