package controle_viagens


class Endereco {

	Integer	id
	String	descricao
	Integer	cep
	String	logradouro
	String	numero
	String	complemento
	String	bairro
	String	municipio
	String	uf


	static constraints = {
	}

	static mapping = { version false }
}
