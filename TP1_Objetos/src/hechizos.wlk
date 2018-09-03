object espectroMalefico{
	
	var nombre = "espectro malefico"
	var poder = nombre.length()
	
	method cambiarNombre(unNombre){
		
		nombre = unNombre
	}
	
	method esPoderoso(){
		
		return poder > 15
	}
	
	method poder(){
	
	       return poder
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
}
