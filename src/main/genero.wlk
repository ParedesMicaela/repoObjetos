import escapista.*
import example.*

class Genero {
	method adicionalSegunGenero(dificultad,cantSustos)
	
	method dificultadSegunGenero(cantSustos,dificultad){
		return dificultad > 7
	}
}

object anime inherits Genero{
	
	override method adicionalSegunGenero(dificultad,cantSustos){
		return 7000
	}
	
	override method dificultadSegunGenero(cantSustos,dificultad){
		return true
	}
	
	
}

object historia inherits Genero{
	
	override method adicionalSegunGenero(dificultad,cantSustos){
		return (dificultad * 31.4) / 100
	}
	
	override method dificultadSegunGenero(cantSustos,dificultad){
		return super(cantSustos,dificultad) && !self.basadaHechoReal()
	}
	
	method basadaHechoReal(){
		return true
	}
}

object terror inherits Genero{
	
	override method adicionalSegunGenero(dificultad,cantSustos){
		if(cantSustos > 5){
		return (cantSustos * 20) / 100			
		}else{
			return 0
		}
	}
	
	override method dificultadSegunGenero(cantSustos,dificultad){
		return super(cantSustos,dificultad) || cantSustos > 5
	}
}



