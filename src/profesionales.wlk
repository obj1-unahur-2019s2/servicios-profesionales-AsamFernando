// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
		
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	method honorariosPorHora() { return universidad.honorarios() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var provinciasDondePuedeTrabajar = #{}
	var property honorariosPorHora
	
	method cargarProvincias(provincia) {
		provinciasDondePuedeTrabajar.add(provincia)
	}
	method provinciasDondePuedeTrabajar() {
		return provinciasDondePuedeTrabajar
	}
}

class Universidad {
	var property provincia
	var property honorarios
}

class EmpresaServicios {
	var property honorariosEmpresa
	const profesionales = #{}
	
	method cargarProfesionales(profesional) {
		profesionales.add(profesional)
	}
	method profesXUniv(univ) {
		return profesionales.filter{ profe => profe.universidad()==univ }.size()
		//return profesionales.count{ profe => profe.universidad()==univ }
	}
	method profesCaros() {
		return profesionales.filter{ profe => profe.honorariosPorHora() > honorariosEmpresa }
	}
	method univFormadoras() {
		return profesionales.map{ profe => profe.universidad() }.asSet()
	}
	method profeMasBarato() {
		return profesionales.min{ profe => profe.honorariosPorHora() }
	}
	method esDeGenteAcotada() {
		return profesionales.all{ profe => profe.provinciasDondePuedeTrabajar().size()<= 3 }
	}
	method puedeSatisfacerSolicitante(solicitante) {
		return profesionales.any{ profe => solicitante.puedeSerAtendida(profe) }
	}
}















