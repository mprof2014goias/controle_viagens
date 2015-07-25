package controle_viagens

class Passageiros {

	Integer id_passageiros
	String cpf
	String nome
	String telefone
	String email
	//teste
	
    static constraints = {
		
		nome (nullable:false, blank:false) 
		email (nullable:false, blank:false, email:true)
		   
		}

	static mapping = {
		
		version false
		
		}
	
	
	
	
	}
