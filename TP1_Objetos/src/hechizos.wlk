import Personaje.*

class Hechizo{
	
	method costoAgregado(unaArmadura) = unaArmadura.valorBase() + self.precioDeLista()
	
	method precioDeLista()
	
		method esPoderoso() = self.poder() >= 15
	
	method poder()
	
	method peso() { // es el mensaje que manda armadura a su refuerzo
		
		if(self.miPoderEsPar()){
			
			return 2
		}
		else
		{
			
			return 1
		}
	}
	
	method miPoderEsPar() = self.poder().even()
	
	method calculoVenta(alguien) = 0.max(self.precioDeLista() - (alguien.precioDeSuHechizoPreferido()/2))
	
	method otorgarProducto(alguien){
		
		alguien.hechizoPreferido(self)
	}
	
}


class HechizoDeLogo inherits Hechizo {

	var nombre
	const multiplicador
	var property porcentajeNombre

	constructor(unNombre, unMultiplicador,unPorcentajeNombre) {
		nombre = unNombre
		multiplicador = unMultiplicador
		porcentajeNombre = unPorcentajeNombre
	}

	override method poder() = self.longitudNombre()* self.porcentajeNombre() * multiplicador

	method cambiarNombre(unNombre) {
		nombre = unNombre
	}

	method unidadesDeLuchaQueAporta(duenio) {
		return self.poder()
	}
	
	method longitudNombre() = nombre.size()
	
	override method precioDeLista() = self.poder()

}


object hechizoBasico inherits Hechizo {

	var poder = 10

	override method poder() {
		return poder
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

	override method poder() {
		return self.hechizosPoderosos().sum({ unHechizo => unHechizo.poder() })
	}

	method hechizosPoderosos() {
		return hechizos.filter({ unHechizo => unHechizo.esPoderoso() })
	}
	
	override method precioDeLista() = (10 * self.cantidadDeHechizos()) + self.poder()

	method cantidadDeHechizos() = self.hechizos().size()
	
	

}


