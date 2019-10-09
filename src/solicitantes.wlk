class persona {
	var property provinciaReside
	
	method puedeSerAtendida(profe) {
		return profe.provinciasDondePuedeTrabajar().any{ prov => prov==provinciaReside }
	}
}

class institucion {
	var property listaUniv=#{}
	
	method agregarUni(uni) {
		listaUniv.add(uni)
	}
	method puedeSerAtendida(profe) {
		return profe.provinciasDondePuedeTrabajar().any{ prov => }
	}
}
