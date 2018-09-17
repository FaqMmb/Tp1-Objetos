import hechizos.*
import artefactos.*

object rolando{
	
	var fuerzaOscura = 5
	var hechizoPreferido = espectroMalefico
	var artefactos = []
	var valorBase = 1
	
    method nivelHechiceria(){
	
	    return (3 * hechizoPreferido.poder()) + fuerzaOscura
} 

   method cambiarHechizoPreferido(unHechizo){
   	
   	  hechizoPreferido = unHechizo
   }
   
   method hechizoPreferido() {
		return hechizoPreferido
	}
   
   method eclipse(){
   	
   	fuerzaOscura *= 2 // abstraerlo a un objeto
   }
   
   method seCreePoderoso(){
   	
   	return hechizoPreferido.esPoderoso()
   	
   }
   
   method valorBase(cual){
   	
   	valorBase = cual
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
   
   method artefactos(){
   	
   	 return artefactos
   }
   
     method soloTieneElEspejo(){
   	
   	 return artefactos == [espejoFantastico]
   }
   
   
   
   
   

}



