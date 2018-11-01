import obrero.*
//agregar un sum en obra
class Obra {
	var ladrillo = 0
	var pared = 0
	var canio = 0
	var cable = 0
	var cinta = 0
	var fosforo = 0
	var arandela = 0
	var plantilla = []
	
	method setLadrillos(_ladrillo) {
		ladrillo = _ladrillo
	}
	
	method ladrillos() {
		return ladrillo
	}
	
	method setCanios(_canio) {
		canio = _canio
	}
	
	method canios() {
		return canio
	}
	
	method setCables(_cable) {
		cable = _cable
	}
	
	method cables() {
		return cable
	}
	
	method setCintas(_cinta) {
		cinta = _cinta
	}
	
	method cintas() {
		return cinta
	}
	
	method setFosforos(_fosforo) {
		fosforo = _fosforo
	}
	
	method fosforos() {
		return fosforo
	}
	
	method setArandelas(_arandela) {
		arandela = _arandela
	}
	
	method arandelas() {
		return arandela
	}
	
	method agregarObrero(_obrero) {
		plantilla.add(_obrero)
	}
	
	method quitarObrero(_obrero) {
		plantilla.remove(_obrero)
	}
	
	method obrerosDisponibles() {
		return plantilla.filter({c => !c.estaDeLicencia()})
	}
	
	method iniciarJornada() {
		if (self.obrerosDisponibles().isEmpty()) {
			self.error("No hay obreros disponibles para trabajar.")
		}
		
		self.obrerosDisponibles().forEach({ obrero => obrero.trabaja(self) })
		
	}
	
	method consumirLadrillo(_ladrillo) {
		ladrillo = ladrillo - _ladrillo
	}
	
	method aportarPared(_pared) {
		pared = pared + _pared
	}
	
	method consumirCanio(_canio) {
		canio = canio - _canio
	}
	
	method aportarCanio(_canio) {
		canio = canio + _canio
	}
	
	method consumirFosforo(_fosforo) {
		fosforo = fosforo - _fosforo
	}
	
	method consumirArandela(_arandela) {
		arandela = arandela - _arandela
	}
	
	method consumirCable(_cable) {
		cable = cable - _cable
	}
	
	method aportarCable(_cable) {
		cable = cable + _cable
	}
	
	method consumirCinta(_cinta) {
		cinta = cinta - _cinta
	}
}