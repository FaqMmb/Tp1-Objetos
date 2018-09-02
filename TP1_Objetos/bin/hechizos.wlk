object espectroMalefico{
	
	var nombre = "espectro malefico"
	var poder = nombre.length()
	
	method cambiarNombre(unNombre){
		
		nombre = unNombre
	}
	
	method esPoderoso(){
		
		return poder > 15
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