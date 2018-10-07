import hechizos.*
import artefactos.*
import Feria.*

class Personaje{
	
	var fuerzaOscura = 5
	var property hechizoPreferido 
	var property artefactos = []
	var valorBase = 1
	var property monedas = 100
	
    method nivelHechiceria(){
	
	    return (3 * hechizoPreferido.poder()) + fuerzaOscura
} 

   method cambiarHechizoPreferido(unHechizo){
   	
   	  hechizoPreferido = unHechizo
   }
   
   method recibirUnEclipse(){
   	
   	self.fuerzaOscura(self.fuerzaOscura() * 2)
   }
   
   method seCreePoderoso(){
   	
   	return hechizoPreferido.esPoderoso()
   	
   }
   

   method habilidadParaLaLucha(){
   	
   	return valorBase + self.habilidadLuchaAportadaPorArtefactos()
   	
   }
   
   method habilidadLuchaAportadaPorArtefactos(){
   	
   	return artefactos.sum({unArtefacto => unArtefacto.unidadesDeLucha(self)})
   }
   
   method agregarArtefacto(unArtefacto){
   	
   	artefactos.add(unArtefacto)
   }
   
   method removerArtefacto(unArtefacto){
   	
   	artefactos.remove(unArtefacto)
   }
   
   method mejorLuchadorQueMago(){
   	
   	return self.habilidadParaLaLucha() > self.nivelHechiceria()
   
   }
   
   method puntosDelMejorArtefacto(){
   	
   	
   	return self.mejorArtefacto().unidadesDeLucha(self)
   	
   	}
   
   method estaCargado(){
   	
   	 return artefactos.size() >= 5
   }
   
   method mejorArtefacto(){
   	
     return self.artefactosSinEspejo().max({unArtefacto => unArtefacto.unidadesDeLucha(self)})
   }
   
   method artefactosSinEspejo(){
   	
   	  return artefactos.filter({unArtefacto => !unArtefacto.equals(espejoFantastico)})
   
   
   }
   
   method fuerzaOscura(){
   	
   	  return fuerzaOscura
   }
   
   method fuerzaOscura(unValor){
   	
   	fuerzaOscura = unValor
   }
   
   method valorBase(unValor){
   	
   	valorBase = unValor
   }
   
   method artefactos(){
   	
   	 return artefactos
   }
   
     method soloTieneElEspejo(){
   	
   	 return artefactos == [espejoFantastico]
   }
   
   //logica del punto 4)
   
     method puedeRealizarTransaccion(unArtefactoOHechizo){
  	
  	return (self.monedas() - unArtefactoOHechizo.precioDeLista() ) > 0
  	
  }
  
    method pagar(deudaAPagar){
  	
  	self.monedas(self.monedas() - deudaAPagar)
  	
  }
  
   method precioDeSuHechizoPreferido() = self.hechizoPreferido().precioDeLista()
  
  method recibirHechizo(unHechizo){
  	
  	self.hechizoPreferido(unHechizo)
  	
  	}
  	
  method canjearHechizo(unHechizo){
  	
  	feriaDeHechizos.realizarTransaccion(self,unHechizo)
  }
  
     method comprarArtefacto(unArtefacto){
   	
   	feriaDeArmas.realizarTransaccion(self,unArtefacto)
   } 
   
   method recibirArtefacto(unArtefacto){
   	
   	self.agregarArtefacto(unArtefacto)
   }
   
   method cantidadDeArtefactos() = self.artefactos().size()
  
  	
}

object eclipse{
	
	
    method hacerUnEclipse(duenio){
		
		duenio.recibirUnEclipse()
	}
}

