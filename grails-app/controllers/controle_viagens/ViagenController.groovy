package controle_viagens



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ViagenController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Viagen.list(params), model:[viagenInstanceCount: Viagen.count()]
    }

    def show(Viagen viagenInstance) {
        respond viagenInstance
    }

    def create() {
        respond new Viagen(params)
    }

    @Transactional
    def save(Viagen viagenInstance) {
        if (viagenInstance == null) {
            notFound()
            return
        }

        if (viagenInstance.hasErrors()) {
            respond viagenInstance.errors, view:'create'
            return
        }

        viagenInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'viagen.label', default: 'Viagen'), viagenInstance.id])
                redirect viagenInstance
            }
            '*' { respond viagenInstance, [status: CREATED] }
        }
    }

    def edit(Viagen viagenInstance) {
        respond viagenInstance
    }

    @Transactional
    def update(Viagen viagenInstance) {
        if (viagenInstance == null) {
            notFound()
            return
        }

        if (viagenInstance.hasErrors()) {
            respond viagenInstance.errors, view:'edit'
            return
        }

        viagenInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Viagen.label', default: 'Viagen'), viagenInstance.id])
                redirect viagenInstance
            }
            '*'{ respond viagenInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Viagen viagenInstance) {

        if (viagenInstance == null) {
            notFound()
            return
        }

        viagenInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Viagen.label', default: 'Viagen'), viagenInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'viagen.label', default: 'Viagen'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
