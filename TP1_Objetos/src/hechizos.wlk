import Personaje.*

class Hechizo{
	
	method costoAgregado(unaArmadura) = unaArmadura.valorBase() + self.precioDeLista()
	
	method precioDeLista()
	
}


class HechizoDeLogo inherits Hechizo {

	var nombre
	const multiplicador

	constructor(unNombre, unMultiplicador) {
		nombre = unNombre
		multiplicador = unMultiplicador
	}

	method poder() {
		return nombre.size() * multiplicador
	}

	method esPoderoso() {
		return self.poder() > 15
	}

	method cambiarNombre(unNombre) {
		nombre = unNombre
	}

	method unidadesDeLuchaQueAporta(duenio) {
		return self.poder()
	}
	
	override method precioDeLista() = self.poder()

}


object hechizoBasico inherits Hechizo {

	var poder = 10

	method poder() {
		return poder
	}

	method esPoderoso() {
		return false
	}

	method unidadesDeLuchaQueAporta(duenio) {
		return self.poder()
	}
	
	override method precioDeLista() = 10

}

class LibroDeHechizos inherits Hechizo {

	var hechizos
	
	constructor(unosHechizos){
		
		hechizos = unosHechizos
	}
	
	method hechizos() = hechizos

	method poder() {
		return self.hechizosPoderosos().sum({ unHechizo => unHechizo.poder() })
	}

	method hechizosPoderosos() {
		return hechizos.filter({ unHechizo => unHechizo.esPoderoso() })
	}
	
	override method precioDeLista() = (10 * self.cantidadDeHechizos()) + self.poder()

	method cantidadDeHechizos() = self.hechizos().size()
	
	

}


