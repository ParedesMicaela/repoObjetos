import excepcion.*

class Grupo {
	var participantes = []
	
	method grupoPuedeSalir(sala){
		participantes.any({participante=>participante.puedeSalir(sala)})
	}
	
	method escapar(sala){
		if(self.grupoPuedePagar(sala))
		{
			participantes.forEach({participante=>participante.pagarSala(sala,self.cantParticipantes())})
			participantes.forEach({participante=>participante.agregarSalaEscapada(sala)})	
		}else{
			throw new SaldoInsuficienteParaPagarSala()
		}
	}
	
	method cantParticipantes(){
		return participantes.size()
	}


	method grupoPuedePagar(sala){
		return ( self.todosPuedenPagar(sala) || self.algunosPuedenPagar(sala))
	}
	
	method todosPuedenPagar(sala){
		return participantes.all({participante=>participante.puedePagar(sala,self.cantParticipantes())})
	}
	
	method algunosPuedenPagar(sala){
		return self.participantesQuePuedenPagar(sala).sum({participante=>participante.saldoDisponible()}) > sala.precio()
	}
	
	method participantesQuePuedenPagar(sala){
		return participantes.filter({participante=>participante.puedePagar(sala,self.cantParticipantes())})
	}
}
