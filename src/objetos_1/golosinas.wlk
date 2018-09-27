// Corregido, Esta muy bien, me gusto que hiciste
// muchos test y refactorizaste todas las golocinas
// a clases.

class Bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

class Alfajor {
	var peso = 300
	method precio() = 12
	method peso() = peso
	method gusto() = "chocolate"
	method libreGluten() = false
	method mordisco(){
		peso = peso * 0.8
	}
}

class Caramelo {
	var peso = 5
	method precio() = 1
	method peso() = peso
	method gusto() = "frutilla"
	method libreGluten() = true
	method mordisco(){
		peso -= 1
	}
}

class Chupetin {
	var peso = 7
	method precio() = 2
	method peso() = peso
	method gusto() = "naranja"
	method libreGluten() = true
	method mordisco(){
		if (peso >= 2){
			peso -= peso * 0.1
		}
	}
}

class Oblea {
	var peso = 250
	method precio() = 5
	method peso() = peso
	method gusto() = "vainilla"
	method libreGluten() = false
	method mordisco(){
		if (peso > 70){
			peso -= peso * 0.5
		} else {
			peso -= peso * 0.25
		}
	}
}

class Chocolatin {
	var pesoInicial
	var pesoActual
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio() {
		if (pesoInicial == null){
			self.error("Debe ingresar un peso inicial primero")
			return 0
// Consulta: Se que esto no es necesario, no lo pide, pero quise aplicar un error
//			Me pide que retorne algo el methodo, que deberia retornar?
// Respuesta: No te hagas problema por esto, podias retornar null,
//			  en estos casos. Ya vamos a ver manejo de errores en detalle. 
		} else {
			return 0.5 * pesoInicial
		}
	}
	method peso() = pesoActual
	method gusto() = "chocolate"
	method libreGluten() = false
	method mordisco(){
		pesoActual -= 2
	}
}

class GolosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() = golosinaInterior.precio() + 2
	method peso() = golosinaInterior.peso() + pesoBanio
	method mordisco() {
		golosinaInterior.mordisco()
		pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() = golosinaInterior.gusto()
	method libreGluten() = golosinaInterior.libreGluten()
}

class Tuttifrutti {
	var peso = 5
	var property libreGluten = false
	const property gustos = ["frutilla", "chocolate", "naranja"]
	method precio() {
		if (libreGluten){
			return 7
		} else {
			return 10
		}
	}
	method gusto() = gustos.first()
	method peso() = peso
	method mordisco(){
		gustos.add(self.gusto())
		gustos.remove(self.gusto())
	}
}

