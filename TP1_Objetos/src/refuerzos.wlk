class CotaDeMalla {
	
	const valorQueAporta
	
	constructor(unValorQueAporta){
		
		valorQueAporta = unValorQueAporta
	}
	
	method unidadesDeLuchaQueAporta(duenio) = valorQueAporta
}

object bendicion{
	
	method unidadesDeLuchaQueAporta(duenio) = duenio.nivelHechiceria()
}

object ningunRefuerzo{
	
	method unidadesDeLuchaQueAporta(duenio) = 0
}


