import genero.*
import escapista.*

object parcial {
	method doble(numero) {
		return numero * 2
	}
}

class SaladeEscape{
	var nombre
	var dificultad
	const genero
	var cantSustos
	
	method precio(){
		return 10.000 + genero.adicionalSegunGenero(dificultad, cantSustos)
	}
	
	method nombreSala(){
		return nombre
	}
	
	method esSalaDificil(){
		return genero.dificultadSegunGenero(cantSustos,dificultad)
	}

}

