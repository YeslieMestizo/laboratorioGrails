package tienda

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class DisfrazController {

    DisfrazService disfrazService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max){
        params.max = Math.min(max ?: 10, 100)
        respond disfrazService.list(params), model:[disfrazCount: disfrazService.count()]
    }

    def show(Long id) {
        respond disfrazService.get(id)
    }

    def create() {
        respond new Disfraz(params)
    }

    def save(Disfraz disfraz) {
        if (disfraz == null) {
            notFound()
            return
        }

        try {
            disfrazService.save(disfraz)
        } catch (ValidationException e) {
            respond disfraz.errors, view:'create'
            return
        }

        request.withFormat{
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'disfraz.label', default: 'Disfraz'), disfraz.id])
                redirect disfraz
            }
            '*' { respond disfraz, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond disfrazService.get(id)
    }

    def update(Disfraz disfraz) {
        if (disfraz == null) {
            notFound()
            return
        }

        try{
            disfrazService.save(disfraz)
        } catch (ValidationException e) {
            respond disfraz.errors, view:'gestionAdmin/editarDisfraz'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'disfraz.label', default: 'Disfraz'), disfraz.id])
                redirect(controller:"gestionAdmin",action:"editarEliminarDisfraz")
            }
            '*'{ render(view:"/gestionAdmin/editarEliminarDisfraz", [status: OK]) }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        disfrazService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'disfraz.label', default: 'Disfraz'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound(){
        request.withFormat{
            form multipartForm{
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'disfraz.label', default: 'Disfraz'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
