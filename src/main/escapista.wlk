import genero.*
import example.*

class Escapista {
	var maestria
	var salasEscapadas = #{}
	var saldoBilletera
	
	method puedeSalir(sala){
		return maestria.puedeEscaparSegunMaestria(sala,self)
	}
	
	method subirNivel(){
		if(self.hizoMuchasSalas()){
			maestria.subirNivelSegunMaestria(self)
		}else{
			self.cambiarNivel(maestria)
		}
	}
	
	method hizoMuchasSalas(){
		return salasEscapadas.size() > 6
	}
	
	method cambiarNivel(nivel){
		maestria = nivel
	}
	
	method nombreSalasDeLasQueSalio(){
		salasEscapadas.forEach({sala=>sala.nombreSala()})
	}
	
	method agregarSalaEscapada(sala){
		salasEscapadas.add(sala)
	}
	
	method pagarSala(sala,cantPersonas){
		saldoBilletera = saldoBilletera - (sala.precio() / cantPersonas) 
	}
	
	method puedePagar(sala, cantPersonas){
		return saldoBilletera >= (sala.precio() / cantPersonas) 
	}
	
	method saldoDisponible(){
		return saldoBilletera
	}
	
}



