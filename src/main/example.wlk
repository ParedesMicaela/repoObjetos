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
	
	method precio(){
		return 10000 + genero.adicionalSegunGenero(dificultad)
	}
	
	method nombreSala(){
		return nombre
	}
	
	method esSalaDificil(){
		return genero.dificultadSegunGenero(dificultad)
	}

}

