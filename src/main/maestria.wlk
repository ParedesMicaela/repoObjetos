import genero.*
import example.*
import escapista.*


class Maestria {
	method puedeEscaparSegunMaestria(sala,escapista)
	
	method subirNivelSegunMaestria(escapista)
}

object amateur inherits Maestria{

	override method puedeEscaparSegunMaestria(sala,escapista){
		return !sala.esDificil() && escapista.hizoMuchasSalas()
	}

	override method subirNivelSegunMaestria(escapista){
		escapista.cambiarNivel(profesional)
	}

}

object profesional inherits Maestria{
	
	override method puedeEscaparSegunMaestria(sala,escapista){
		return true
	}
	
	override method subirNivelSegunMaestria(escapista){
		escapista.cambiarNivel(self)
	}
}