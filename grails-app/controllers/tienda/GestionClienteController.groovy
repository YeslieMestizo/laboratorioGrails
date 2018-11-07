package tienda
import grails.validation.ValidationException
import grails.rest.RestfulController

class GestionClienteController extends RestfulController<Cliente> {
    static responseFormats = ['xml', 'json']
    GestionClienteService gestionClienteService
    GestionAdminService gestionAdminService

    GestionClienteController(){
      super(Cliente)
    }

    def index(){
    [listaCatalogo: gestionAdminService.listaCatalogo()]
    }

    def verImagen = {
        def disfraz = Disfraz.get(params.id)
        response.outputStream << disfraz.imagen
        response.outputStream.flush()
    }

    def verCarritoCompra(){

    }
}
