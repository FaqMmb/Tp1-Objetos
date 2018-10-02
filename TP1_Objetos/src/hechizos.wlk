import Personaje.*

class HechizoDeLogo {

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

}


object hechizoBasico {

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

}

object libroDeHechizos {

	var hechizos = [ new HechizoDeLogo("espectroMalefico",1), hechizoBasico ]

	method poder() {
		return self.hechizosPoderosos().sum({ unHechizo => unHechizo.poder() })
	}

	method hechizosPoderosos() {
		return hechizos.filter({ unHechizo => unHechizo.esPoderoso() })
	}

}


