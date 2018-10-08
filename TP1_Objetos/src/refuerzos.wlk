class CotaDeMalla {
	
	const valorQueAporta
	
	constructor(unValorQueAporta){
		
		valorQueAporta = unValorQueAporta
	}
	
	method valorQueAporta() = valorQueAporta
	
	method unidadesDeLuchaQueAporta(duenio) = self.valorQueAporta()
	
	method costoAgregado(unaArmadura) = self.valorQueAporta() / 2
}

object bendicion{
	
	method unidadesDeLuchaQueAporta(duenio) = duenio.nivelHechiceria()
	
	method costoAgregado(unaArmadura) = unaArmadura.valorBase()
}

object ningunRefuerzo{
	
	method unidadesDeLuchaQueAporta(duenio) = 0
	
	method costoAgregado(unaArmadura) = 2
}


