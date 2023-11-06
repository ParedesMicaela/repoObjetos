import escapista.*
import example.*

class Genero {
	method adicionalSegunGenero(dificultad)
	
	method dificultadSegunGenero(dificultad){
		return dificultad > 7
	}
}

object anime inherits Genero{
	
	override method adicionalSegunGenero(dificultad){
		return 7000
	}
	
	override method dificultadSegunGenero(dificultad){
		return true
	}
	
}

object historia inherits Genero{
	var basadaHechoReal = false
	
	override method adicionalSegunGenero(dificultad){
		return (dificultad * 31.4) / 100
	}
	
	override method dificultadSegunGenero(dificultad){
		return super(dificultad) && !self.basadaHechoReal()
	}
	
	method basadaHechoReal(){
		return basadaHechoReal
	}
}

object terror inherits Genero{
	var cantSustos = 0	
	
	override method adicionalSegunGenero(dificultad){
		if(cantSustos > 5){
		return (cantSustos * 20) / 100			
		}else{
			return 0
		}
	}
	
	override method dificultadSegunGenero(dificultad){
		return super(dificultad) || cantSustos > 5
	}
}



