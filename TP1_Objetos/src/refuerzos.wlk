object cotaDeMalla {
	
	method unidadesDeLuchaQueAporta(duenio) = 1
}

object bendicion{
	
	method unidadesDeLuchaQueAporta(duenio) = duenio.nivelDeHechiceria()
}

object ningunRefuerzo{
	
	method unidadesDeLuchaQueAporta(duenio) = 0
}


