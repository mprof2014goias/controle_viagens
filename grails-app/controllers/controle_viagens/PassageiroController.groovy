package controle_viagens



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PassageiroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Passageiro.list(params), model:[passageiroInstanceCount: Passageiro.count()]
    }

    def show(Passageiro passageiroInstance) {
        respond passageiroInstance
    }

    def create() {
        respond new Passageiro(params)
    }

    @Transactional
    def save(Passageiro passageiroInstance) {
        if (passageiroInstance == null) {
            notFound()
            return
        }

        if (passageiroInstance.hasErrors()) {
            respond passageiroInstance.errors, view:'create'
            return
        }

        passageiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'passageiro.label', default: 'Passageiro'), passageiroInstance.id])
                redirect passageiroInstance
            }
            '*' { respond passageiroInstance, [status: CREATED] }
        }
    }

    def edit(Passageiro passageiroInstance) {
        respond passageiroInstance
    }

    @Transactional
    def update(Passageiro passageiroInstance) {
        if (passageiroInstance == null) {
            notFound()
            return
        }

        if (passageiroInstance.hasErrors()) {
            respond passageiroInstance.errors, view:'edit'
            return
        }

        passageiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Passageiro.label', default: 'Passageiro'), passageiroInstance.id])
                redirect passageiroInstance
            }
            '*'{ respond passageiroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Passageiro passageiroInstance) {

        if (passageiroInstance == null) {
            notFound()
            return
        }

        passageiroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Passageiro.label', default: 'Passageiro'), passageiroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'passageiro.label', default: 'Passageiro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
