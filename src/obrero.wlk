class Obrero {
	var bLicencia = false
	var trabajar
	
	method estaDeLicencia() {
		return bLicencia
	}
	
	method tomarLicencia() {
		bLicencia = true
	}
	
	method volverLicencia() {
		bLicencia = false
	}
	
	method trabaja(_obra)	
	
	// agregar diasAdeudados++ en el metodo abstracto
}

class Albanil inherits Obrero {
	var consumeLadrillo = 100
	var aportaPared = 3
	
	override method trabaja(_obra) {
		_obra.consumirLadrillo(consumeLadrillo)
		_obra.aportarPared(aportaPared)
		//super(_obra)
	}
}

class Gasista inherits Obrero {
	var consumeCanio = 3
	var consumeFosforo = 20
	var aportaCanio = 3
	
	override method trabaja(_obra) {
		_obra.consumirCanio(consumeCanio)
		_obra.consumirFosforo(consumeFosforo)
		_obra.aportarCanio(aportaCanio)
		//super(_obra)
	}
}

class Plomero inherits Obrero {
	var consumeCanio = 10
	var consumeArandela = 30
	var aportaCanio = 9
	var desperdicio = 1
	
	override method trabaja(_obra) {
		_obra.consumirCanio(consumeCanio)
		_obra.consumirArandela(consumeArandela)
		_obra.aportarCanio(aportaCanio)
		//super(_obra)
	}
}

class Electricista inherits Obrero {
	var consumeCable = 4
	var consumeCinta = 1
	var aportaCable = 4
	
	override method trabaja(_obra) {
		_obra.consumirCable(consumeCable)
		_obra.consumirCinta(consumeCinta)
		_obra.aportarCable(aportaCable)
		//super(_obra)
	}
}