package controle_viagens



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PassageirosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Passageiros.list(params), model:[passageirosInstanceCount: Passageiros.count()]
    }

    def show(Passageiros passageirosInstance) {
        respond passageirosInstance
    }

    def create() {
        respond new Passageiros(params)
    }

    @Transactional
    def save(Passageiros passageirosInstance) {
        if (passageirosInstance == null) {
            notFound()
            return
        }

        if (passageirosInstance.hasErrors()) {
            respond passageirosInstance.errors, view:'create'
            return
        }

        passageirosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'passageiros.label', default: 'Passageiros'), passageirosInstance.id])
                redirect passageirosInstance
            }
            '*' { respond passageirosInstance, [status: CREATED] }
        }
    }

    def edit(Passageiros passageirosInstance) {
        respond passageirosInstance
    }

    @Transactional
    def update(Passageiros passageirosInstance) {
        if (passageirosInstance == null) {
            notFound()
            return
        }

        if (passageirosInstance.hasErrors()) {
            respond passageirosInstance.errors, view:'edit'
            return
        }

        passageirosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Passageiros.label', default: 'Passageiros'), passageirosInstance.id])
                redirect passageirosInstance
            }
            '*'{ respond passageirosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Passageiros passageirosInstance) {

        if (passageirosInstance == null) {
            notFound()
            return
        }

        passageirosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Passageiros.label', default: 'Passageiros'), passageirosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'passageiros.label', default: 'Passageiros'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
