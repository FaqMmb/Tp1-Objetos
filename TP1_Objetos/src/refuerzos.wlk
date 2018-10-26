class CotaDeMalla {
	
	const valorQueAporta
	
	constructor(unValorQueAporta){
		
		valorQueAporta = unValorQueAporta
	}
	
	method valorQueAporta() = valorQueAporta
	
	method unidadesDeLuchaQueAporta(duenio) = self.valorQueAporta()
	
	method costoAgregado(unaArmadura) = self.valorQueAporta() / 2
	
	method peso() = 1
}

object bendicion{
	
	method unidadesDeLuchaQueAporta(duenio) = duenio.nivelHechiceria()
	
	method costoAgregado(unaArmadura) = unaArmadura.valorBase()
	
	method peso() = 0
}

object ningunRefuerzo{
	
	method unidadesDeLuchaQueAporta(duenio) = 0
	
	method costoAgregado(unaArmadura) = 2
	
	method peso() = 0
}


