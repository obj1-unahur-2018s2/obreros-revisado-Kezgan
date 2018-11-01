import obra.*

class Obrero {
	var bLicencia = false
	var jornalesAdeudados = 0
	
	method estaDeLicencia() {
		return bLicencia
	}
	
	method tomarLicencia() {
		bLicencia = true
	}
	
	method volverLicencia() {
		bLicencia = false
	}
	
	method trabaja(_obra) {
		jornalesAdeudados = jornalesAdeudados + 1
	}
	
	method debeCobrar()
	
	method cobrar(obra) {
		obra.descontar(self.debeCobrar())
		jornalesAdeudados = 0
	}
}

class Albanil inherits Obrero {
	var consumeLadrillo = 100
	//var aportaPared = 3
	
	override method trabaja(_obra) {
		_obra.consumirLadrillo(consumeLadrillo)
		//_obra.aportarPared(aportaPared)
		super(_obra)
	}
	
	override method debeCobrar() {
		return jornalesAdeudados * uocra.jornalAlbanil()
	}
}

class Gasista inherits Obrero {
	var consumeCanio = 3
	var consumeFosforo = 20
	//var aportaCanio = 3
	
	override method trabaja(_obra) {
		_obra.consumirCanio(consumeCanio)
		_obra.consumirFosforo(consumeFosforo)
		//_obra.aportarCanio(aportaCanio)
		super(_obra)
	}
	
	override method debeCobrar() {
		return jornalesAdeudados * uocra.jornalGasista()
	}
}

class Plomero inherits Obrero {
	var consumeCanio = 10
	var consumeArandela = 30
	//var aportaCanio = 9
	var desperdicio = 0
	
	override method trabaja(_obra) {
		_obra.consumirCanio(consumeCanio)
		_obra.consumirArandela(consumeArandela)
		//_obra.aportarCanio(aportaCanio)
		desperdicio = desperdicio + 1
		super(_obra)
	}
	
	override method debeCobrar() {
		return jornalesAdeudados * uocra.jornalPlomero()
	}
}

class Electricista inherits Obrero {
	var consumeCable = 4
	var consumeCinta = 1
	//var aportaCable = 4
	
	override method trabaja(_obra) {
		_obra.consumirCable(consumeCable)
		_obra.consumirCinta(consumeCinta)
		//_obra.aportarCable(aportaCable)
		super(_obra)
	}
	
	override method debeCobrar() {
		return jornalesAdeudados * uocra.jornalElectricista()
	}
}

object uocra {
	
	var obrerosRegistrados
	
	method jornalAlbanil() {
		return 2000
	}
	
	method jornalGasista() {
		return 3000
	}
	
	method jornalPlomero() {
		return 3000
	}
	
	method jornalElectricista() {
		return 3500
	}
}
