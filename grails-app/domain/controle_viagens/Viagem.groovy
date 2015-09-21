package controle_viagens

class Viagem {
	Integer id
	Date ida
	Date volta
	String objetivo
	String status = 'Pendente'
	Passageiro passageiro
	Endereco origem
	Endereco destino

	static constraints = {
		ida (blank:false, attributes: [ "precision": "minute"])
		volta (blank:false, attributes: [ "precision": "minute"])
		objetivo(blank:false, widget:'textarea' )
		status (blank:false, widget:'select', inList: [
			'Autorizada',
			'Negada',
			'Pendente',
			'Realizada'
		])
		passageiro (blank:false)
		origem (blank:false)
		destino (blank:false)
	}
	static mapping = {
		status defaultValue: "'Pendente'"
		version false
	}

	String toString() { "${origem}" - "${objetivo}" }
}
