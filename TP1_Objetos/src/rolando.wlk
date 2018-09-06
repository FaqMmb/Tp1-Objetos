import hechizos.*
import artefactos.*

object rolando{
	
	var fuerzaOscura = 5
	var hechizoPreferido = espectroMalefico
	var artefactos = []
	var valorBase = 1
	

    // nivelHechiceria como variable? o se puede dejar como resultado de este metodo
    method nivelHechiceria(){
	
	    return (3 * hechizoPreferido.poder()) + fuerzaOscura
} 

   // que nombre usar: este o hechizoPreferido(respetando la standarizacion del setter)
   method cambiarHechizoPreferido(unHechizo){
   	
   	  hechizoPreferido = unHechizo
   }
   
   method eclipse(){
   	
   	fuerzaOscura *= 2
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
   	
   	return artefactos.sum({unArtefacto => unArtefacto.unidadesDeLucha()})
   }
   
   method agregarArtefacto(unArtefacto){
   	
   	artefactos.add(unArtefacto)
   	unArtefacto.duenio(self)
   }
   
   method removerArtefacto(unArtefacto){
   	
   	artefactos.remove(unArtefacto)
   	unArtefacto.duenio(null)
   }
   
   method mejorLuchadorQueMago(){
   	
   	return self.habilidadParaLaLucha() > self.nivelHechiceria()
   
   }
   
   method puntosDelMejorArtefacto(){// que pasa si esta vacia?
   	
   	return artefactos.max({unArtefacto => unArtefacto.unidadesDeLucha()})
   	
   }
   
   

}



