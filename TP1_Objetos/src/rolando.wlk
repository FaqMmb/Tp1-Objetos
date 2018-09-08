import hechizos.*
import artefactos.*

object rolando{
	
	var property fuerzaOscura = 5
	var hechizoPreferido = espectroMalefico
	var artefactos = [espadaDelDestino,collarDivino,mascaraOscura,armadura,espejoFantastico]
	var valorBase = 1
	
    method nivelHechiceria(){
	
	    return (3 * hechizoPreferido.poder()) + fuerzaOscura
} 

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
   
   method estaCargado(){
   	
   	 return artefactos.length() > 5
   }
   
   
   
   

}



