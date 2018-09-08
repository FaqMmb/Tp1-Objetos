object espectroMalefico{
	
	var nombre = "espectro malefico"
	
	method cambiarNombre(unNombre){
		
		nombre = unNombre
	}
	
	method esPoderoso(){
		
		return self.poder() > 15
	}
	
	method poder(){
	
	       return nombre.length()
	}
	
	method unidadesDeLuchaQueAporta(duenio){
		
		return self.poder()
	}
}

object hechizoBasico{
	
	var poder = 10
	
	method poder(){
		
		return poder
	}
	
	method esPoderoso(){
		
		return false
	}
	
	method unidadesDeLuchaQueAporta(duenio){
		
		return self.poder()
	}
}
