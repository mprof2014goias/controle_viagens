package controle_viagens

import static org.springframework.http.HttpStatus.*
import org.springframework.web.servlet.ModelAndView
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ViagemController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Viagem.list(params), model:[viagemInstanceCount: Viagem.count()]
	}

	def show(Viagem viagemInstance) {
		respond viagemInstance
	}

	def create() {
		respond new Viagem(params)
	}

	@Transactional
	def save(Viagem viagemInstance) {
		if (viagemInstance == null) {
			notFound()
			return
		}

		if (viagemInstance.hasErrors()) {
			respond viagemInstance.errors, view:'create'
			return
		}

		viagemInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'viagem.label', default: 'Viagem'),
					viagemInstance.id
				])
				redirect viagemInstance
			}
			'*' { respond viagemInstance, [status: CREATED] }
		}
	}

	def edit(Viagem viagemInstance) {
		respond viagemInstance
	}

	@Transactional
	def update(Viagem viagemInstance) {
		if (viagemInstance == null) {
			notFound()
			return
		}

		if (viagemInstance.hasErrors()) {
			respond viagemInstance.errors, view:'edit'
			return
		}

		viagemInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'viagem.label', default: 'Viagem'),
					viagemInstance.id
				])
				redirect viagemInstance
			}
			'*'{ respond viagemInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Viagem viagemInstance) {

		if (viagemInstance == null) {
			notFound()
			return
		}

		viagemInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'viagem.label', default: 'Viagem'),
					viagemInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'viagem.label', default: 'Viagem'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}

	def pesquisar = {
		def viagens = null
		def keyword = params.keyword

		if (keyword){
			viagens = Viagem.createCriteria().list{
				or{
					ilike ('objetivo', "%${keyword}%")
					ilike ('status', "%${keyword}%")
					sqlRestriction("DATE_FORMAT(ida,'%d/%m/%Y %H:%i') LIKE '%${keyword}%'")
					sqlRestriction("DATE_FORMAT(volta,'%d/%m/%Y %H:%i') LIKE '%${keyword}%'")
					passageiro{
						ilike('nome', "%${keyword}%")
					}
					origem{
						or{
							ilike('descricao', "%${keyword}%")
							ilike('logradouro', "%${keyword}%")
							ilike('municipio', "%${keyword}%")
							ilike('uf', "%${keyword}%")
						}
					}
					destino{
						or{
							ilike('descricao', "%${keyword}%")
							ilike('logradouro', "%${keyword}%")
							ilike('municipio', "%${keyword}%")
							ilike('uf', "%${keyword}%")
						}
					}
				}
			}

			if(viagens.size() == 0){
				flash.message = message(code: 'default.pesquisar.semresultado')
			}
		}
		return new ModelAndView('/viagem/pesquisar',[viagemInstanceList:viagens, keyword: params.keyword])
	}
}