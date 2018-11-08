import hechizos.*
import artefactos.*
import Feria.*

class Personaje {

	var property hechizoPreferido
	var property artefactos = []
	var valorBase = 1
	var property monedas = 100
	const cargaMaxima

	constructor(unasMonedas, unaCargaMaxima) {
		monedas = unasMonedas
		cargaMaxima = unaCargaMaxima
	}

	method cargaMaxima() = cargaMaxima

	method nivelHechiceria() {
		return (3 * hechizoPreferido.poder()) + fuerzaOscura.valor()
	}
	
	method fuerzaOscura() = fuerzaOscura.valor()

	method cambiarHechizoPreferido(unHechizo) {
		hechizoPreferido = unHechizo
	}

	method seCreePoderoso() {
		return hechizoPreferido.esPoderoso()
	}

	method habilidadParaLaLucha() {
		return valorBase + self.habilidadLuchaAportadaPorArtefactos()
	}

	method habilidadLuchaAportadaPorArtefactos() {
		return artefactos.sum({ unArtefacto => unArtefacto.unidadesDeLucha(self) })
	}

	method agregarArtefacto(unArtefacto) {
		artefactos.add(unArtefacto)
	}

	method removerArtefacto(unArtefacto) {
		artefactos.remove(unArtefacto)
	}

	method mejorLuchadorQueMago() {
		return self.habilidadParaLaLucha() > self.nivelHechiceria()
	}

	method puntosDelMejorArtefacto() {
		return self.mejorArtefacto().unidadesDeLucha(self)
	}

	method estaCargado() {
		return artefactos.size() >= 5
	}

	method mejorArtefacto() {
		return self.artefactosSinEspejo().max({ unArtefacto => unArtefacto.unidadesDeLucha(self) })
	}

	method artefactosSinEspejo() {
		return artefactos.filter({ unArtefacto => !unArtefacto.equals(espejoFantastico) })
	}

	method valorBase(unValor) {
		valorBase = unValor
	}

	method artefactos() {
		return artefactos
	}

	method soloTieneElEspejo() {
		return artefactos == [ espejoFantastico ]
	}

	// logica del punto 4)
	method puedeRealizarTransaccion(unArtefactoOHechizo) {
		return self.puedePagarlo(unArtefactoOHechizo) and self.puedeCargarlo(unArtefactoOHechizo)
	}

	method puedePagarlo(unArtefactoOHechizo) = (self.monedas() - unArtefactoOHechizo.cuantoCuesta(self) ) >= 0

	method puedeCargarlo(unArtefactoOHechizo) = (self.cargaQueLleva() + unArtefactoOHechizo.pesoTotal()) <= cargaMaxima

	method cargaQueLleva() = self.artefactos().sum{ unArtefacto => unArtefacto.pesoTotal() }

	method pagar(deudaAPagar) {
		self.monedas(self.monedas() - deudaAPagar)
	}

	method precioDeSuHechizoPreferido() = self.hechizoPreferido().precioDeLista()

	method recibirHechizo(unHechizo) {
		self.hechizoPreferido(unHechizo)
	}

	method comprarArtefacto(aQuienComprar,unArtefacto) {
		aQuienComprar.realizarTransaccion(self, unArtefacto)
	}

	method recibirArtefacto(unArtefacto) {
		self.agregarArtefacto(unArtefacto)
	}

	method cantidadDeArtefactos() = self.artefactos().size()

}

object eclipse {

	method hacerUnEclipse() {
		fuerzaOscura.valor(fuerzaOscura.valor()*2)
	}

}

