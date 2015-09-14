package controle_viagens

class Passageiro {

	Integer id
	String cpf
	String nome
	String telefone
	String email
	Endereco endereco
	//teste

	static constraints = {

		nome (nullable:false, blank:false)
		email (nullable:false, blank:false, email:true)

	}

	static mapping = { version false }

}
